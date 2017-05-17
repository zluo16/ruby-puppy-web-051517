class Dog

  attr_accessor :all, :name

  @@all = Array.new

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all.each{|dog| puts dog.name}
  end

  def self.clear_all
    @@all.delete_if{|dog| @@all.index(dog) > -1}
  end

end
