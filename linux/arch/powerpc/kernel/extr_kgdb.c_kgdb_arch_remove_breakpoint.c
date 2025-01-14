
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kgdb_bkpt {scalar_t__ bpt_addr; scalar_t__ saved_instr; } ;


 int EFAULT ;
 int patch_instruction (unsigned int*,unsigned int) ;

int kgdb_arch_remove_breakpoint(struct kgdb_bkpt *bpt)
{
 int err;
 unsigned int instr = *(unsigned int *)bpt->saved_instr;
 unsigned int *addr = (unsigned int *)bpt->bpt_addr;

 err = patch_instruction(addr, instr);
 if (err)
  return -EFAULT;

 return 0;
}
