
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kgdb_bkpt {int saved_instr; scalar_t__ bpt_addr; } ;


 int __patch_text (void*,unsigned int) ;

int kgdb_arch_remove_breakpoint(struct kgdb_bkpt *bpt)
{
 __patch_text((void *)bpt->bpt_addr, *(unsigned int *)&bpt->saved_instr);
 return 0;
}
