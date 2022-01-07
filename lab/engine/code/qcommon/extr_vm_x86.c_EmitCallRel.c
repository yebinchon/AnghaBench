
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vm_t ;


 int Emit4 (int) ;
 int EmitString (char*) ;
 int compiledOfs ;

void EmitCallRel(vm_t *vm, int callOfs)
{
 EmitString("E8");
 Emit4(callOfs - compiledOfs - 4);
}
