
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {intptr_t instructionCount; scalar_t__ instructionPointers; } ;
typedef TYPE_1__ vm_t ;


 int Emit4 (intptr_t) ;
 int EmitCallErrJump (TYPE_1__*,int) ;
 int EmitCallRel (TYPE_1__*,int) ;
 int EmitRexString (int,char*) ;
 int EmitString (char*) ;
 int SET_JMPOFS (int) ;
 int STACK_POP (int) ;
 int STACK_PUSH (int) ;
 int compiledOfs ;

int EmitCallProcedure(vm_t *vm, int sysCallOfs)
{
 int jmpSystemCall, jmpBadAddr;
 int retval;

 EmitString("8B 04 9F");
 STACK_POP(1);
 EmitString("85 C0");


 EmitString("7C");
 jmpSystemCall = compiledOfs++;



 EmitString("81 F8");
 Emit4(vm->instructionCount);


 EmitString("73");
 jmpBadAddr = compiledOfs++;




 EmitString("FF 14 85");
 Emit4((intptr_t) vm->instructionPointers);

 EmitString("8B 04 9F");
 EmitString("C3");


 SET_JMPOFS(jmpBadAddr);
 EmitCallErrJump(vm, sysCallOfs);




 SET_JMPOFS(jmpSystemCall);
 retval = compiledOfs;

 EmitCallRel(vm, sysCallOfs);


 STACK_PUSH(1);
 EmitString("C3");

 return retval;
}
