
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__* instructionPointers; } ;
typedef TYPE_1__ vm_t ;


 int Emit4 (scalar_t__) ;
 int EmitString (char const*) ;
 int JUSED (int) ;
 scalar_t__ compiledOfs ;
 int pass ;

void EmitJumpIns(vm_t *vm, const char *jmpop, int cdest)
{
 JUSED(cdest);

 EmitString(jmpop);


 if(pass == 2)
  Emit4(vm->instructionPointers[cdest] - compiledOfs - 4);
 else
  compiledOfs += 4;
}
