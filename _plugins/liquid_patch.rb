# _plugins/liquid_patch.rb
# This restores the removed .tainted? method so legacy Jekyll/Liquid templates work in Ruby 3.2+ and 4.0+

unless String.method_defined?(:tainted?)
  class Object
    def tainted?
      false
    end
  end
end