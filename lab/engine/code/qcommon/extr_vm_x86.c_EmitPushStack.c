
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int* instructionPointers; } ;
typedef TYPE_1__ vm_t ;


 scalar_t__ LAST_COMMAND_SUB_BL_1 ;
 scalar_t__ LAST_COMMAND_SUB_BL_2 ;
 scalar_t__ LastCommand ;
 int STACK_POP (int) ;
 int STACK_PUSH (int) ;
 int compiledOfs ;
 int instruction ;
 int jlabel ;

__attribute__((used)) static void EmitPushStack(vm_t *vm)
{
 if (!jlabel)
 {
  if(LastCommand == LAST_COMMAND_SUB_BL_1)
  {
   compiledOfs -= 3;
   vm->instructionPointers[instruction - 1] = compiledOfs;
   return;
  }
  if(LastCommand == LAST_COMMAND_SUB_BL_2)
  {
   compiledOfs -= 3;
   vm->instructionPointers[instruction - 1] = compiledOfs;
   STACK_POP(1);
   return;
  }
 }

 STACK_PUSH(1);
}
