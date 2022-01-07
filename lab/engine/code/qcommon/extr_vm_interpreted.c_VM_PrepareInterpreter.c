
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int codeLength; int* instructionPointers; int instructionCount; scalar_t__ codeBase; } ;
typedef TYPE_1__ vm_t ;
struct TYPE_6__ {int codeOffset; int instructionCount; int codeLength; } ;
typedef TYPE_2__ vmHeader_t ;
typedef scalar_t__ byte ;


 int Com_Error (int ,char*) ;
 int ERR_DROP ;
 scalar_t__ Hunk_Alloc (int,int ) ;
 int h_high ;
 int loadWord (scalar_t__*) ;

void VM_PrepareInterpreter( vm_t *vm, vmHeader_t *header ) {
 int op;
 int byte_pc;
 int int_pc;
 byte *code;
 int instruction;
 int *codeBase;

 vm->codeBase = Hunk_Alloc( vm->codeLength*4, h_high );




 int_pc = byte_pc = 0;
 instruction = 0;
 code = (byte *)header + header->codeOffset;
 codeBase = (int *)vm->codeBase;


 while ( instruction < header->instructionCount ) {
  vm->instructionPointers[ instruction ] = int_pc;
  instruction++;

  op = (int)code[ byte_pc ];
  codeBase[int_pc] = op;
  if(byte_pc > header->codeLength)
   Com_Error(ERR_DROP, "VM_PrepareInterpreter: pc > header->codeLength");

  byte_pc++;
  int_pc++;


  switch ( op ) {
  case 146:
  case 147:
  case 133:
  case 137:
  case 145:
  case 129:
  case 131:
  case 135:
  case 139:
  case 142:
  case 130:
  case 134:
  case 138:
  case 141:
  case 144:
  case 128:
  case 132:
  case 136:
  case 140:
  case 143:
  case 148:
   codeBase[int_pc] = loadWord(&code[byte_pc]);
   byte_pc += 4;
   int_pc++;
   break;
  case 149:
   codeBase[int_pc] = (int)code[byte_pc];
   byte_pc++;
   int_pc++;
   break;
  default:
   break;
  }

 }
 int_pc = 0;
 instruction = 0;



 while ( instruction < header->instructionCount ) {
  op = codeBase[ int_pc ];
  instruction++;
  int_pc++;

  switch ( op ) {

  case 145:
  case 129:
  case 131:
  case 135:
  case 139:
  case 142:
  case 130:
  case 134:
  case 138:
  case 141:
  case 144:
  case 128:
  case 132:
  case 136:
  case 140:
  case 143:
   if(codeBase[int_pc] < 0 || codeBase[int_pc] > vm->instructionCount)
    Com_Error(ERR_DROP, "VM_PrepareInterpreter: Jump to invalid instruction number");



   codeBase[int_pc] = vm->instructionPointers[codeBase[int_pc]];
   int_pc++;
   break;


  case 146:
  case 147:
  case 133:
  case 137:
  case 148:
  case 149:
   int_pc++;
   break;

  default:
   break;
  }

 }
}
