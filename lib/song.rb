require "pry"
class Song
  attr_accessor :name, :artist_name
  @@all = []

  def self.all
    @@all
  end

  def save
    self.class.all << self
  end

  def self.create
    song = self.new
    # binding.pry
    song.save
    song
  end

  def self.new_by_name(arg)
    song = self.new
<<<<<<< HEAD
    # binding.pry
    song.name = arg
    song
=======
    song.name = arg
    # binding.pry
    # song
>>>>>>> a056bc34012dc0695706cdc2c96c212f110f7458
  end

  def self.create_by_name(arg)
    song = self.new
    # binding.pry
    song.name = arg
    song.save
    song
  end

  def self.find_by_name(arg)
<<<<<<< HEAD
    self.all.find{|song| song.name == arg}
  end

  def self.find_or_create_by_name(arg)
    # binding.pry
    if self.find_by_name(arg) == nil
      self.create_by_name(arg)
  else
    # binding.pry
    self.find_by_name(arg)
  end
  end

  def self.alphabetical
    self.all.sort_by {|song| song.name}
  end

  def self.new_from_filename(arg)
    # binding.pry
    filename = arg.split(" - ")
      song = self.new
      song.artist_name = filename[0]
      song.name = filename[1].delete_suffix(".mp3")
      song
  end

  def self.create_from_filename(arg)
    filename = arg.split(" - ")
      song = self.new
      song.artist_name = filename[0]
      song.name = filename[1].delete_suffix(".mp3")
      song.save
      song
=======
    self.all.find{|song| song.name == name}
  end

  def self.find_or_create_by_name(arg)

  end

  def self.alphabetical(arg)

  end

  def self.new_from_filename(arg)

  end

  def self.create_from_filename(arg)

>>>>>>> a056bc34012dc0695706cdc2c96c212f110f7458
  end

  def self.destroy_all
  self.all.clear
  end

end
