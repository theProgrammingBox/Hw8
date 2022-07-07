CC = g++
FLAGS = -std=c++14 -Wall -g
OBJS = hw8.o
FILES = hw8.cpp

all: hw8

hw8: $(OBJS)
	$(CC) $(FLAGS) $(OBJS) -o hw8

hw8.o: hw8.cpp
	$(CC) $(FLAGS) -c hw8.cpp

tar:
	tar -cf hw8.tar hw8.scr Makefile $(FILES)

clean:
	rm *.o *.tar *.scr hw8

sudoClean:
	rm *.o *.scr hw8