
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vm_t ;


 int Emit4 (int) ;
 int EmitCallIns (int *,int) ;
 int EmitCallRel (int *,int) ;
 int EmitString (char*) ;

void EmitCallConst(vm_t *vm, int cdest, int callProcOfsSyscall)
{
 if(cdest < 0)
 {
  EmitString("B8");
  Emit4(cdest);

  EmitCallRel(vm, callProcOfsSyscall);
 }
 else
  EmitCallIns(vm, cdest);
}
