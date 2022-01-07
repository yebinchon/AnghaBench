
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct kgdb_bkpt {scalar_t__ saved_instr; scalar_t__ bpt_addr; } ;


 int aarch64_insn_write (void*,int ) ;

int kgdb_arch_remove_breakpoint(struct kgdb_bkpt *bpt)
{
 return aarch64_insn_write((void *)bpt->bpt_addr,
   *(u32 *)bpt->saved_instr);
}
