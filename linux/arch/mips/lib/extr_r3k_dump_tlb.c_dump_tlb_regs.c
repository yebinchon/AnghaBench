
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int pr_info (char*,int ) ;
 scalar_t__ r3k_have_wired_reg ;
 int read_c0_entryhi () ;
 int read_c0_entrylo0 () ;
 int read_c0_index () ;
 int read_c0_wired () ;

void dump_tlb_regs(void)
{
 pr_info("Index    : %0x\n", read_c0_index());
 pr_info("EntryHi  : %0lx\n", read_c0_entryhi());
 pr_info("EntryLo  : %0lx\n", read_c0_entrylo0());
 if (r3k_have_wired_reg)
  pr_info("Wired    : %0x\n", read_c0_wired());
}
