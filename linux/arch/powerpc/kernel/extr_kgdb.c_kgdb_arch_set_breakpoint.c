
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kgdb_bkpt {scalar_t__ saved_instr; scalar_t__ bpt_addr; } ;


 int BREAK_INSTR ;
 int EFAULT ;
 int patch_instruction (unsigned int*,int ) ;
 int probe_kernel_address (unsigned int*,unsigned int) ;

int kgdb_arch_set_breakpoint(struct kgdb_bkpt *bpt)
{
 int err;
 unsigned int instr;
 unsigned int *addr = (unsigned int *)bpt->bpt_addr;

 err = probe_kernel_address(addr, instr);
 if (err)
  return err;

 err = patch_instruction(addr, BREAK_INSTR);
 if (err)
  return -EFAULT;

 *(unsigned int *)bpt->saved_instr = instr;

 return 0;
}
