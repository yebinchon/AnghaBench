
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct perf_event {int dummy; } ;
struct arch_hw_breakpoint {int dummy; } ;
struct TYPE_3__ {struct perf_event* last_hit_ubp; } ;
struct TYPE_4__ {TYPE_1__ thread; } ;


 int __set_breakpoint (struct arch_hw_breakpoint*) ;
 int bp_per_reg ;
 struct arch_hw_breakpoint* counter_arch_bp (struct perf_event*) ;
 TYPE_2__* current ;
 struct perf_event** this_cpu_ptr (int *) ;

int arch_install_hw_breakpoint(struct perf_event *bp)
{
 struct arch_hw_breakpoint *info = counter_arch_bp(bp);
 struct perf_event **slot = this_cpu_ptr(&bp_per_reg);

 *slot = bp;





 if (current->thread.last_hit_ubp != bp)
  __set_breakpoint(info);

 return 0;
}
