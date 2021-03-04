OBJ_DIR = obj
SRC_DIR =src
INC_DIR = include
BIN_INC = bin

OBJETOS = client.o main.o memory.o process.o proxy.o server.o synchronization.o

CC = gcc

vpath %.o $(OBJ_DIR)

FLAGS = -Wall -I $(INC_DIR)

out : $(OBJETOS)
	$(CC) $(addprefix $(OBJ_DIR) /, $(OBJETOS)) -o $@

%.o: $(SRC_DIR)/%.c $($@)
	$(CC) $(CFLAGS) -o $(OBJ_DIR)/$@ -c $<

play : 
	./bin/out

clean :
	rm -f $(OBJ_DIR)/*.o $(BIN_DIR)/out