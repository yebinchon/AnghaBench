
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int* instructionPointers; } ;
typedef TYPE_1__ vm_t ;


 int EmitString (char*) ;
 scalar_t__ LAST_COMMAND_MOV_STACK_EAX ;
 scalar_t__ LastCommand ;
 scalar_t__ OP_DIVI ;
 scalar_t__ OP_DIVU ;
 scalar_t__ OP_MULI ;
 scalar_t__ OP_MULU ;
 scalar_t__ OP_STORE1 ;
 scalar_t__ OP_STORE2 ;
 scalar_t__ OP_STORE4 ;
 int compiledOfs ;
 int instruction ;
 int jlabel ;
 scalar_t__ pop1 ;

void EmitMovECXStack(vm_t *vm)
{
 if(!jlabel)
 {
  if(LastCommand == LAST_COMMAND_MOV_STACK_EAX)
  {
   compiledOfs -= 3;
   vm->instructionPointers[instruction - 1] = compiledOfs;
   EmitString("89 C1");
   return;
  }
  if(pop1 == OP_DIVI || pop1 == OP_DIVU || pop1 == OP_MULI || pop1 == OP_MULU ||
   pop1 == OP_STORE4 || pop1 == OP_STORE2 || pop1 == OP_STORE1)
  {
   EmitString("89 C1");
   return;
  }
 }

 EmitString("8B 0C 9F");
}
