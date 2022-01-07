
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ codeLength; scalar_t__ codeBase; } ;
typedef TYPE_1__ vm_t ;


 int O_CREAT ;
 int O_TRUNC ;
 int O_WRONLY ;
 int memcpy (scalar_t__,unsigned int*,int) ;
 int open (char*,int,int) ;
 int write (int,unsigned int*,int) ;

void _emit(vm_t *vm, unsigned isn, int pass)
{
 if (pass)
  memcpy(vm->codeBase+vm->codeLength, &isn, 4);
 vm->codeLength+=4;
}
