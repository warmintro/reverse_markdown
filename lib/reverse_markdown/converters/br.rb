module ReverseMarkdown
  module Converters
    class Br < Base
      def convert(node, state = {})
        if ReverseMarkdown.config.slack_flavored
          ""
        else
          "  \n"
        end
      end
    end

    register :br, Br.new
  end
end
