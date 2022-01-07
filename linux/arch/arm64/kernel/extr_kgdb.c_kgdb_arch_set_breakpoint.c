
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct kgdb_bkpt {scalar_t__ bpt_addr; scalar_t__ saved_instr; } ;


 scalar_t__ AARCH64_BREAK_KGDB_DYN_DBG ;
 scalar_t__ AARCH64_INSN_SIZE ;
 scalar_t__ BREAK_INSTR_SIZE ;
 int BUILD_BUG_ON (int) ;
 int aarch64_insn_read (void*,int *) ;
 int aarch64_insn_write (void*,int ) ;

int kgdb_arch_set_breakpoint(struct kgdb_bkpt *bpt)
{
 int err;

 BUILD_BUG_ON(AARCH64_INSN_SIZE != BREAK_INSTR_SIZE);

 err = aarch64_insn_read((void *)bpt->bpt_addr, (u32 *)bpt->saved_instr);
 if (err)
  return err;

 return aarch64_insn_write((void *)bpt->bpt_addr,
   (u32)AARCH64_BREAK_KGDB_DYN_DBG);
}
