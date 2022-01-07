
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ cpu_has_guestid ;
 scalar_t__ cpu_has_htw ;
 scalar_t__ cpu_has_rixi ;
 scalar_t__ cpu_has_small_pages ;
 scalar_t__ cpu_has_xpa ;
 int current_cpu_type () ;
 int pr_info (char*,int const,...) ;
 int read_c0_entryhi () ;
 int read_c0_entrylo0 () ;
 int read_c0_entrylo1 () ;
 int read_c0_framemask () ;
 int read_c0_guestctl1 () ;
 int read_c0_index () ;
 int read_c0_pagegrain () ;
 int read_c0_pagemask () ;
 int read_c0_pwctl () ;
 int read_c0_pwfield () ;
 int read_c0_pwsize () ;
 int read_c0_wired () ;

void dump_tlb_regs(void)
{
 const int field = 2 * sizeof(unsigned long);

 pr_info("Index    : %0x\n", read_c0_index());
 pr_info("PageMask : %0x\n", read_c0_pagemask());
 if (cpu_has_guestid)
  pr_info("GuestCtl1: %0x\n", read_c0_guestctl1());
 pr_info("EntryHi  : %0*lx\n", field, read_c0_entryhi());
 pr_info("EntryLo0 : %0*lx\n", field, read_c0_entrylo0());
 pr_info("EntryLo1 : %0*lx\n", field, read_c0_entrylo1());
 pr_info("Wired    : %0x\n", read_c0_wired());
 switch (current_cpu_type()) {
 case 131:
 case 130:
 case 129:
 case 128:
  pr_info("FrameMask: %0x\n", read_c0_framemask());
  break;
 }
 if (cpu_has_small_pages || cpu_has_rixi || cpu_has_xpa)
  pr_info("PageGrain: %0x\n", read_c0_pagegrain());
 if (cpu_has_htw) {
  pr_info("PWField  : %0*lx\n", field, read_c0_pwfield());
  pr_info("PWSize   : %0*lx\n", field, read_c0_pwsize());
  pr_info("PWCtl    : %0x\n", read_c0_pwctl());
 }
}
