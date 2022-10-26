class Song
    attr_accessor :name, :artist, :genre

    @@genres = []
    @@count = 0
    @@artists = []

    def initialize(name, artist, genre)
        @name = name
        @artist = artist
        @genre = genre
        @@genres << genre
        @@artists << artist
        @@count += 1
        
    end

    def self.count
        @@count
      end

    def self.artists
        @@artists.uniq
      end

      def self.genres
        @@genres.uniq
      end

      def self.genre_count
        @@genres.tally
      end
    
      def self.artist_count
        @@artists.tally
      end


end

