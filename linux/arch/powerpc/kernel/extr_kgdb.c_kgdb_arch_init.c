
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int __debugger ;
 int __debugger_bpt ;
 int __debugger_break_match ;
 int __debugger_fault_handler ;
 int __debugger_iabr_match ;
 int __debugger_ipi ;
 int __debugger_sstep ;
 int kgdb_break_match ;
 int kgdb_debugger ;
 int kgdb_debugger_ipi ;
 int kgdb_handle_breakpoint ;
 int kgdb_iabr_match ;
 int kgdb_not_implemented ;
 int kgdb_singlestep ;
 int old__debugger ;
 int old__debugger_bpt ;
 int old__debugger_break_match ;
 int old__debugger_fault_handler ;
 int old__debugger_iabr_match ;
 int old__debugger_ipi ;
 int old__debugger_sstep ;

int kgdb_arch_init(void)
{
 old__debugger_ipi = __debugger_ipi;
 old__debugger = __debugger;
 old__debugger_bpt = __debugger_bpt;
 old__debugger_sstep = __debugger_sstep;
 old__debugger_iabr_match = __debugger_iabr_match;
 old__debugger_break_match = __debugger_break_match;
 old__debugger_fault_handler = __debugger_fault_handler;

 __debugger_ipi = kgdb_debugger_ipi;
 __debugger = kgdb_debugger;
 __debugger_bpt = kgdb_handle_breakpoint;
 __debugger_sstep = kgdb_singlestep;
 __debugger_iabr_match = kgdb_iabr_match;
 __debugger_break_match = kgdb_break_match;
 __debugger_fault_handler = kgdb_not_implemented;

 return 0;
}
