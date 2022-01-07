
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct kgdb_bkpt {int type; scalar_t__ bpt_addr; int saved_instr; } ;
struct TYPE_2__ {int gdb_bpt_instr; } ;


 int BP_BREAKPOINT ;
 int BP_POKE_BREAKPOINT ;
 int BREAK_INSTR_SIZE ;
 int EBUSY ;
 TYPE_1__ arch_kgdb_ops ;
 scalar_t__ mutex_is_locked (int *) ;
 int probe_kernel_read (int ,char*,int ) ;
 int probe_kernel_write (char*,int ,int ) ;
 int text_mutex ;
 int text_poke_kgdb (void*,int ,int ) ;

int kgdb_arch_set_breakpoint(struct kgdb_bkpt *bpt)
{
 int err;

 bpt->type = BP_BREAKPOINT;
 err = probe_kernel_read(bpt->saved_instr, (char *)bpt->bpt_addr,
    BREAK_INSTR_SIZE);
 if (err)
  return err;
 err = probe_kernel_write((char *)bpt->bpt_addr,
     arch_kgdb_ops.gdb_bpt_instr, BREAK_INSTR_SIZE);
 if (!err)
  return err;




 if (mutex_is_locked(&text_mutex))
  return -EBUSY;
 text_poke_kgdb((void *)bpt->bpt_addr, arch_kgdb_ops.gdb_bpt_instr,
         BREAK_INSTR_SIZE);
 bpt->type = BP_POKE_BREAKPOINT;

 return 0;
}
