
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct perf_event {int dummy; } ;


 int WARN_ONCE (int,char*) ;
 int bp_per_reg ;
 int hw_breakpoint_disable () ;
 struct perf_event** this_cpu_ptr (int *) ;

void arch_uninstall_hw_breakpoint(struct perf_event *bp)
{
 struct perf_event **slot = this_cpu_ptr(&bp_per_reg);

 if (*slot != bp) {
  WARN_ONCE(1, "Can't find the breakpoint");
  return;
 }

 *slot = ((void*)0);
 hw_breakpoint_disable();
}
