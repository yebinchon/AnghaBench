
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct perf_event {int dummy; } ;
struct TYPE_2__ {int enabled; } ;
struct arch_hw_breakpoint {unsigned long trigger; TYPE_1__ step_ctrl; } ;


 int core_num_wrps ;
 struct arch_hw_breakpoint* counter_arch_bp (struct perf_event*) ;
 int disable_single_step (struct perf_event*) ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;
 struct perf_event** this_cpu_ptr (int ) ;
 int wp_on_reg ;

__attribute__((used)) static void watchpoint_single_step_handler(unsigned long pc)
{
 int i;
 struct perf_event *wp, **slots;
 struct arch_hw_breakpoint *info;

 slots = this_cpu_ptr(wp_on_reg);

 for (i = 0; i < core_num_wrps; ++i) {
  rcu_read_lock();

  wp = slots[i];

  if (wp == ((void*)0))
   goto unlock;

  info = counter_arch_bp(wp);
  if (!info->step_ctrl.enabled)
   goto unlock;





  if (info->trigger != pc)
   disable_single_step(wp);

unlock:
  rcu_read_unlock();
 }
}
