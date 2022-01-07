
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__* instructionPointers; } ;
typedef TYPE_1__ vm_t ;


 int Emit4 (scalar_t__) ;
 int EmitString (char*) ;
 int JUSED (int) ;
 scalar_t__ compiledOfs ;
 int pass ;

void EmitCallIns(vm_t *vm, int cdest)
{
 JUSED(cdest);

 EmitString("E8");


 if(pass == 2)
  Emit4(vm->instructionPointers[cdest] - compiledOfs - 4);
 else
  compiledOfs += 4;
}
