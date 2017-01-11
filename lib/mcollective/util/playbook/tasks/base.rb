module MCollective
  module Util
    class Playbook
      class Tasks
        class Base
          attr_accessor :description

          def to_s
            "#<%s description: %s>" % [self.class, description]
          end

          def run_task(result)
            validate_configuration!

            result.timed_run(self)
          end

          def run
            raise(NotImplementedError, "run not implemented", caller)
          end

          def validate_configuration!
            raise(NotImplementedError, "validate_configuration! not implemented", caller)
          end

          def from_hash(properties)
            raise(NotImplementedError, "from_hash not implemented", caller)
          end
        end
      end
    end
  end
end
