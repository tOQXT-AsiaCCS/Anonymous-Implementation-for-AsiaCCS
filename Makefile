all: clean compile

clean:
	rm toqxt
	rm oqxt
	
compile:
	clear
	clear
	gcc -g -Wall toqxt.c -o toqxt -lcrypto -lm 
	gcc -g -Wall oqxt.c -o oqxt -lcrypto -lm 

pqxt:
	gdb ./toqxt
	
oqxt_eurosnp:
	gdb ./oqxt
	
run:
	./a.out

debug:
	gdb ./a.out
