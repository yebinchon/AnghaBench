
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct perf_event {int dummy; } ;
struct arch_hw_breakpoint {int dummy; } ;
struct TYPE_2__ {int num_events; int (* enable ) (struct arch_hw_breakpoint*,int) ;int clk; } ;


 int EBUSY ;
 scalar_t__ WARN_ONCE (int,char*) ;
 int * bp_per_reg ;
 int clk_enable (int ) ;
 struct arch_hw_breakpoint* counter_arch_bp (struct perf_event*) ;
 TYPE_1__* sh_ubc ;
 int stub1 (struct arch_hw_breakpoint*,int) ;
 struct perf_event** this_cpu_ptr (int *) ;

int arch_install_hw_breakpoint(struct perf_event *bp)
{
 struct arch_hw_breakpoint *info = counter_arch_bp(bp);
 int i;

 for (i = 0; i < sh_ubc->num_events; i++) {
  struct perf_event **slot = this_cpu_ptr(&bp_per_reg[i]);

  if (!*slot) {
   *slot = bp;
   break;
  }
 }

 if (WARN_ONCE(i == sh_ubc->num_events, "Can't find any breakpoint slot"))
  return -EBUSY;

 clk_enable(sh_ubc->clk);
 sh_ubc->enable(info, i);

 return 0;
}
