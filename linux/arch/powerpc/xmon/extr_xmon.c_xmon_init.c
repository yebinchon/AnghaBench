
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int * __debugger ;
 int * __debugger_bpt ;
 int * __debugger_break_match ;
 int * __debugger_fault_handler ;
 int * __debugger_iabr_match ;
 int * __debugger_ipi ;
 int * __debugger_sstep ;
 int rtas_token (char*) ;
 int set_indicator_token ;
 int * xmon ;
 int * xmon_bpt ;
 int * xmon_break_match ;
 int * xmon_fault_handler ;
 int * xmon_iabr_match ;
 int * xmon_ipi ;
 int * xmon_sstep ;

__attribute__((used)) static void xmon_init(int enable)
{
 if (enable) {
  __debugger = xmon;
  __debugger_ipi = xmon_ipi;
  __debugger_bpt = xmon_bpt;
  __debugger_sstep = xmon_sstep;
  __debugger_iabr_match = xmon_iabr_match;
  __debugger_break_match = xmon_break_match;
  __debugger_fault_handler = xmon_fault_handler;
 } else {
  __debugger = ((void*)0);
  __debugger_ipi = ((void*)0);
  __debugger_bpt = ((void*)0);
  __debugger_sstep = ((void*)0);
  __debugger_iabr_match = ((void*)0);
  __debugger_break_match = ((void*)0);
  __debugger_fault_handler = ((void*)0);
 }
}
