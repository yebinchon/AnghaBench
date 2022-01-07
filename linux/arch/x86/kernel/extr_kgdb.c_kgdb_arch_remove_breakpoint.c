
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kgdb_bkpt {scalar_t__ type; scalar_t__ saved_instr; scalar_t__ bpt_addr; } ;


 scalar_t__ BP_POKE_BREAKPOINT ;
 int BREAK_INSTR_SIZE ;
 scalar_t__ mutex_is_locked (int *) ;
 int probe_kernel_write (char*,char*,int ) ;
 int text_mutex ;
 int text_poke_kgdb (void*,scalar_t__,int ) ;

int kgdb_arch_remove_breakpoint(struct kgdb_bkpt *bpt)
{
 if (bpt->type != BP_POKE_BREAKPOINT)
  goto knl_write;




 if (mutex_is_locked(&text_mutex))
  goto knl_write;
 text_poke_kgdb((void *)bpt->bpt_addr, bpt->saved_instr,
         BREAK_INSTR_SIZE);
 return 0;

knl_write:
 return probe_kernel_write((char *)bpt->bpt_addr,
      (char *)bpt->saved_instr, BREAK_INSTR_SIZE);
}
