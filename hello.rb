#print "hello world!"
#puts "hello world(puts)"
#p "hello world(p)"

=begin

=end

# 変数　：　データにつけるラベル　以下の＝は数学的な意味ではなく、右辺を左辺に代入することを意味する
#msg = "hello world"
#p msg

# 定数：変更されないデータ　この値を変更されたら困る、など。mailアドレス
# 最初の一文字目が大文字だと定数扱いだが、通例全て大文字にする
# ADMIN_EMAIL = "k.youki0709@gmail.com"
# ADMIN_EMAIL = "hogehoge"

# データ (オブジェクト）：いろいろな便利な命令が詰まったデータ型
# - メソッド (クラスで定義)：便利な命令そのもののこと　クラスとはオブジェクトの設計図のようなもの。全てのデータはなんらかのクラスに属している

# p "hello world".length　#　単語数がわかる
# p "hello world".revers! # 
# p "hello world".revers # 逆順にする

#️ 数字オブジェクト
# x = 10 # 100_000_000　# _は無視する
# y = 20.5
# z = 1/3r # Rational(1, 3)
# + - * / % ** # %であまりを出す　**でべき乗
# p x % 3 # 1
# p x ** 3 # 1000
# p z * 2 #2/3
# x = x+5　は x += 5 とも書き表せる　これを自己代入という
# p y.round　でyを四捨五入してくれる

# 文字列オブジェクト　①""で囲う　これは変数展開、特殊文字を使える　②''で囲う

# name = "kimura"
# x = "hel\tlo\n world, #{name}" #変数展開、特殊文字(\n:改行　\t:タブ)
# y = 'hel\tlo\n world, #{name}'
# puts x
# puts y
# puts "hello　world" + " kimura"　# +を使うと連結
# puts "hello " * 5　# *を使うと繰り返しをしてくれる

#　メソッド
# ! 破壊的メソッド　元データも書き換えることが可能
# ? 真偽値を返すメソッド true false 演算の時などに使う

# s = "kimura"
#{"puts s.upcase! #大文字 !を付け加えると元データも書き換えられる
# puts s

# s = ""
# p s.empty? 　emptyで空文字かどうかを判断する

# 配列オブジェクト　複数のデータをまとめることができるデータ型
# sales_1 sales_2 sales_3 ・・・と管理できたら楽である
# sales = [5, 8, 4]　管理したい数値を[]の中に入れる
# p sales[1] = 10 #最初の数値を0として数え始める　後から書き換えることも可能
# p sales[1]
# p sales[0..2] # 2以前 012
# p sales[0...2] #2より前 01
# p sales[-1] #最終項
# p sales[1 ,2] # 1から2個分

# sales[0...2] = [1, 2] #1, 2に書き換え
# sales[1, 0] = [10, 11 , 12]　#10 11 12を挿入できる
# sales[0, 2] = []　# 要素の削除も可能
# p sales.size　# 要素数を出す
# p sales.sort.reverse #　メソッドはピリオドでつなげることができる
# p sales.push(100) # 末尾に追加する
# sales << 100 << 102 # 末尾挿入のショートカット　末尾追加はよく使う
# p sales

# ハッシュ
#️ key value　# keyをつけて識別詞をつけることも可能
# sales = {"kimura" => 200, "tanaka" => 300}　# =>で識別詞がつけられる
# p sales["kimura"]
# sales = {:kimura => 200, :tanaka => 300} # :も""も同じ効果だが、:の方が動作がスムーズ
# sales = {kimura: 200, tanaka: 300} # これは上記2つの識別詞をつける方法と同じ意味。覚えときましょう。
# p sales[:kimura]
# p sales.size # 要素数　＝ 2
# p sales.keys # key kimura: tanaka:
# p sales.values # 数値のみ
# p sales.has_key?(:kimura) # keyがあるかどうか

# a = 10
# b = "5"
# p a + b.to_i # 文字列を整数に変換
# p a + b.to_f # 文字列を実数に変換
# p a.to_s + b # 数字を文字列として扱うsはストリングス
# h = {kimura: 100, tanaka: 200}
# p h.to_a  # 個々の配列に直してくれて、大きな配列で囲む
# p h.to_a.to_h # まぜかうまくいかない・・・

# %記法
# s = "hello"
# s = %Q(hello) # 上記と同じ意味　中で()のところは""などなんでも中で使える Qは省略可能
# %記法は中で区切り文字を使いときに便利
# s = "hel/"lo" #真ん中の"のマークが終わりのものなのかどうかwからないので、このときは/"と表記する
# %記法だとそのまま
# s = %Q(hel/lo)　と書ける
# s = %q(hello) # Q→qとすると、シングルコーテーションと同じ
# p s

#要素が文字列のときにも%は使える
# a = ["a", "b". "c"]
# a = %W(a b c) #上記と同じ W→wとすると、""→''と同じ
# p a

# 条件分岐 if 文
=begin
	
rescue Exception => e
if 条件
　真
else
　偽	
=end

# > < より大きい小さい
# >= <= 以上以下
# == !=　等しい等しくない
# && (and)
# || (or)
# ! (not)

# score = 50
# if score > 60
#  puts "ok!"
# elsif score > 40
#  puts "soso..."
# else
#  puts "NG!"
# end

# score = 80
# puts "ok!" if score > 60  # 上記のif文と同じ
# b = 20
# c = 30
# b, c = 10, 20 # 多重代入
# a = b > c ? b : c # bがcより大きいが真か。真ならばbをそうでなければcを表示する
# puts a
# signal = "blue"

=begin
条件分岐　case
  case 比較したいオブジェクト
    when 値
      がっちするならこの処理
    when 値
      がっちするならこの処理
    when 値
      がっちするならこの処理
    else
      それ以外はこの処理
=end
# case signal
# when "red"
# 	puts "stop!"
# when "blue", "green"
# 	puts "go!"
# when "yellow"
# 	puts "caution!"
# else
# 	puts "wrong signal"
# end


# 繰り返し処理
# times
# while
# 3.times do
#   puts "hello"
# end　# helloが３回繰り返される
# 3.times do |i|
# 	puts "#{i}: hello" # このように|i|を使うと、何回目の処理化が明らかになる 0から始まることに注意
# end
# i = 0
# while i < 3 do
# 	puts "#{i}: hello"
# 	i = i + 1
#	i += 1 #上記と同じ
#end

# break: ループを抜ける
# next: ループを一回スキップ
# 3.times do |i|
# if i == 1
	# break # 1のときにbreakされる
# 	next # 1のときにスキップされる
# end
# 	puts "#{i}: hello"
# end
# 繰り返し処理
# for
# each
=begin
	
rescue Exception => e
	
end
for i in 0..2 do
	puts i
=end
# for color in ["red", "blue", "pink"] do
# 	puts color
# end
# ["red", "blue", "pink"].each do |color|
# 	puts color
# end
# {"red"=>200, "blue"=>300, "pink"=>50}.each do |color, price|
# 	puts "#{color}: #{price}"
# end

#　関数的メソッド　メソッドを作ってみる
# def sayHi(name = "steve") #defで定義する = steveとすると、下で名前を定義しない時steveと表示される
	# puts "hello!" + name
# 	s = "hello!" + name
# 	return s　#返り値　returnは省略可能 他の演算でも使えるようになる
# end

# sayHi("kimura")
# sayHi("tanaka")
# sayHi() # 後ろに()をつけることで、これはメソッドなんだな、ということが理解される
# greet = sayHi()
# puts greet

# クラス（オブジェクトの設計図）
# メソッド　クラスの中でメソッドの定義などを行っていく
# インスタンス　（クラスから作られたオブジェクト）

# class User #classの後は必ず大文字から始まる

 # @@count = 0 #クラス変数

 # def initialize(name)　#　インスタンスを作るときに必ずされる初期化変数
	# @name = name # @がついたものをインスタンス変数という　
  # こうすると、そのインスタンス内の別のメソッド内から呼び出せる
	# @@count += 1
 # end

 # def sayHi # インスタンスメソッド
	# puts "hello, my name is #{@name}"
 # end
 
 # def User.sayHello # クラスメソッド クラスから直接呼び出す
  # puts "hello from User class (#{@@count} users)"
 # end

# end

# User.sayHello() # クラスメソッドを定義すれば下記のようにnewで定義しなくても書ける
# tom = User.new("Tom")
# bob = User.new("Bob")
# tom.sayHi()
# bob.sayHi()
# User.sayHello() 

=begin
#クラス（オブジェクトの設計図）の継承
class User #classの後は必ず大文字から始まる

  def initialize(name)
	@name = name # @がついたものをインスタンス変数という
  end

  def sayHi # インスタンスメソッド
	puts "hello, my name is #{@name}"
  end
end

class SuperUser < User # この不等号の記号でクラスを継承できる superUserはUserの拡張したもの
  def shout
 	puts "hello! from #{@name}!"
  end
end

tom = User.new("Tom")
bob = SuperUser.new("Bob")
tom.sayHi()
bob.sayHi()
bob.shout()
=end

# class User #classの後は必ず大文字から始まる

  # def initialize(name)
	# @name = name # @がついたものをインスタンス変数という
  # end

=begin
	
rescue Exception => e
	
end
# インスタンス変数を取得する方をgetter
  def name
  	@name #returnが省略
  end
#設定する方をsetterという
  def setName(newName)
  	@neme = newName
  end
=end

=begin
	
 attr_accessor :name　# getterとsetterを同時に生成してくれる方法
 attr_reader :name #getterのみ
 attr_writer :name #setterのみ
  def sayHi # インスタンスメソッド
	puts "hello, my name is #{@name}"
  end
end
bob = User.new('Bob')
bob.sayHi()
p bob.name
# bob.setName('Tom')
bob.name = 'Tom' # 上記と同じ書き方
bob.sayHi()
=end

# Timeについて
# t = Time.now
# t = Time.new(2015, 12, 4, 15, 33, 22)
# p t.strftime("Updated: %Y-%m-%d")
# p t.year
# p t.month
# p t
# t += 10
# p t


