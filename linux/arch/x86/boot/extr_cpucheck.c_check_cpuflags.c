
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int* flags; } ;


 int NCAPINTS ;
 TYPE_1__ cpu ;
 int* err_flags ;
 int* req_flags ;

__attribute__((used)) static int check_cpuflags(void)
{
 u32 err;
 int i;

 err = 0;
 for (i = 0; i < NCAPINTS; i++) {
  err_flags[i] = req_flags[i] & ~cpu.flags[i];
  if (err_flags[i])
   err |= 1 << i;
 }

 return err;
}
