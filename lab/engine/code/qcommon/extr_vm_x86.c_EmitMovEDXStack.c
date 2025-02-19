
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int* instructionPointers; } ;
typedef TYPE_1__ vm_t ;


 int Emit4 (int) ;
 int EmitString (char*) ;
 scalar_t__ LAST_COMMAND_MOV_STACK_EAX ;
 scalar_t__ LastCommand ;
 int MASK_REG (char*,int) ;
 scalar_t__ OP_CONST ;
 scalar_t__ OP_DIVI ;
 scalar_t__ OP_DIVU ;
 scalar_t__ OP_MULI ;
 scalar_t__ OP_MULU ;
 scalar_t__ OP_STORE1 ;
 scalar_t__ OP_STORE2 ;
 scalar_t__ OP_STORE4 ;
 int* buf ;
 int compiledOfs ;
 int instruction ;
 int jlabel ;
 int lastConst ;
 scalar_t__ pop1 ;

void EmitMovEDXStack(vm_t *vm, int andit)
{
 if(!jlabel)
 {
  if(LastCommand == LAST_COMMAND_MOV_STACK_EAX)
  {
   compiledOfs -= 3;
   vm->instructionPointers[instruction - 1] = compiledOfs;

   EmitString("8B D0");
  }
  else if(pop1 == OP_DIVI || pop1 == OP_DIVU || pop1 == OP_MULI || pop1 == OP_MULU ||
   pop1 == OP_STORE4 || pop1 == OP_STORE2 || pop1 == OP_STORE1)
  {
   EmitString("8B D0");
  }
  else if(pop1 == OP_CONST && buf[compiledOfs-7] == 0xC7 && buf[compiledOfs-6] == 0x07 && buf[compiledOfs - 5] == 0x9F)
  {
   compiledOfs -= 7;
   vm->instructionPointers[instruction - 1] = compiledOfs;
   EmitString("BA");

   if(andit)
    Emit4(lastConst & andit);
   else
    Emit4(lastConst);

   return;
  }
  else
   EmitString("8B 14 9F");

 }
 else
  EmitString("8B 14 9F");

 if(andit)
  MASK_REG("E2", andit);
}
