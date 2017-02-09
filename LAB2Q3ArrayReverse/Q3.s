	AREA RESET,DATA,READONLY
	EXPORT __Vectors
__Vectors
	DCD 0x10000000
	DCD Reset_Handler
	ALIGN
	AREA mycode, CODE, READONLY
	ENTRY
	EXPORT Reset_Handler
Reset_Handler
	LDR R0,=SRC
	LDR R1,=SRC+(10-1)*4
	MOV R5,#5
LAB LDR R2,[R0]
	LDR R3,[R1]
	STR R2,[R1]
	STR R3,[R0]
	ADD R0,#4
	SUB R1,#4
	SUB R5,#1
	TEQ R5,#0
	BNE LAB
STOP B STOP
	AREA mydata,DATA, READWRITE
SRC DCD 0,0,0,0,0,0,0,0,0,0
	END
	