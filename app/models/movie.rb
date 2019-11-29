require "pry"
class Movie < ActiveRecord::Base
  
  attr_accessor :title, :release_date, :director, :lead, :in_theaters
  
  def initialize(attributes)
    binding.pry
    attributes.each {|key, value| self.send(("#{key}="), value)}
    @@all << self
  end
  
end