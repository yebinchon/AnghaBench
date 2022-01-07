
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct kgdb_bkpt {scalar_t__ bpt_addr; int saved_instr; } ;
struct TYPE_2__ {int gdb_bpt_instr; } ;


 int BREAK_INSTR_SIZE ;
 int __patch_text (void*,unsigned int) ;
 TYPE_1__ arch_kgdb_ops ;
 int probe_kernel_read (int ,char*,int ) ;

int kgdb_arch_set_breakpoint(struct kgdb_bkpt *bpt)
{
 int ret = probe_kernel_read(bpt->saved_instr, (char *)bpt->bpt_addr,
    BREAK_INSTR_SIZE);
 if (ret)
  return ret;

 __patch_text((void *)bpt->bpt_addr,
   *(unsigned int *)&arch_kgdb_ops.gdb_bpt_instr);
 return ret;
}
