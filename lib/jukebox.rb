# Add your code here

songs = [
  "Phoenix - 1901",
  "Tokyo Police Club - Wait Up",
  "Sufjan Stevens - Too Much",
  "The Naked and the Famous - Young Blood",
  "(Far From) Home - Tiga",
  "The Cults - Abducted",
  "Phoenix - Consolation Prizes",
  "Harry Chapin - Cats in the Cradle",
  "Amos Lee - Keep It Loose, Keep It Tight"
]

def help
  puts "I accept the following commands:"
  puts "- help : displays this help message"
  puts "- list : displays a list of songs you can play"
  puts "- play : lets you choose a song to play"
  puts "- exit : exits this program"
end

def list(songs)
  songs.each_with_index do |song,number| 
    puts "#{number + 1}. #{song}"
  end
end

def play(songs)
  i = 0
  while i == 0
  puts "Please enter a song name or number:"
  input = gets.strip
  if (1..9).include?(input.to_i)
    song_num_array = input.to_i - 1
    puts "Playing #{songs[song_num_array]}"
    i = 1
  elsif songs.include?(input)
    puts "Playing #{input}"
    i = 1
  else 
    puts "Invalid input, please try again"
  end
end
end

def exit_jukebox
  puts "Goodbye"
end

def run(songs)
  i = 0
  while i == 0
  puts "Please enter a command:"
  juke = gets.strip
  case
   when juke == "help"
     help
   when juke == "list"
     list(songs)
   when juke == "play"
     play(songs)
   when juke == "exit"
     exit_jukebox
     exit
   end
  end
end
   
    
  
    