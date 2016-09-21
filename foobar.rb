class Foobar

  def self.baz(a)
    # Class method
    # Call with `Foobar.baz`

    # Maps from strings to ints
    a = a.map { |i| i.to_i }

    # Adds 2 to each int
    a.map! do |b|
        b += 2
    end

    # Deletes int if not even
    a.delete_if { |b| b % 2 != 0}

    # Makes a new array of unique ints
    arr = []
    a.each do |e|
     arr << e unless arr.include?(e)
    end

    # Deletes ints greater than 10
    arr.delete_if { |b| b > 10}

    # Adds the final ints together & returns
    c = 0
    arr.map do |b|
        c += b
    end
    return c
  end

  def foo(b)
    # Instance method
    # Call with foobar_instance.foo
  end

  def bar(c)
    # Instance method
    # Call with foobar_instance.bar
  end
end