
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vm_t ;


 int Emit4 (int ) ;
 int EmitCallRel (int *,int) ;
 int EmitString (char*) ;
 int VM_JMP_VIOLATION ;

__attribute__((used)) static void EmitCallErrJump(vm_t *vm, int sysCallOfs)
{
 EmitString("B8");
 Emit4(VM_JMP_VIOLATION);

 EmitCallRel(vm, sysCallOfs);
}
