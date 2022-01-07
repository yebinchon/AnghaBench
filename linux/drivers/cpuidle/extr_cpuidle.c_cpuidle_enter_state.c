
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct cpuidle_state {int flags; scalar_t__ exit_latency; int (* enter ) (struct cpuidle_device*,struct cpuidle_driver*,int) ;scalar_t__ target_residency; scalar_t__ disabled; } ;
struct cpuidle_driver {int state_count; struct cpuidle_state* states; } ;
struct cpuidle_device {int last_residency; TYPE_1__* states_usage; int cpu; } ;
typedef scalar_t__ s64 ;
typedef int ktime_t ;
struct TYPE_2__ {int time; int below; scalar_t__ disable; int above; int usage; } ;


 int CPUIDLE_FLAG_TIMER_STOP ;
 int EBUSY ;
 scalar_t__ INT_MAX ;
 int PWR_EVENT_EXIT ;
 scalar_t__ WARN_ON_ONCE (int) ;
 int cpuidle_state_is_coupled (struct cpuidle_driver*,int) ;
 int default_idle_call () ;
 int find_deepest_state (struct cpuidle_driver*,struct cpuidle_device*,scalar_t__,int,int) ;
 int irqs_disabled () ;
 scalar_t__ ktime_us_delta (int ,int ) ;
 int local_clock () ;
 int local_irq_disable () ;
 int local_irq_enable () ;
 int ns_to_ktime (int ) ;
 int sched_clock_idle_wakeup_event () ;
 int sched_idle_set_state (struct cpuidle_state*) ;
 int start_critical_timings () ;
 int stop_critical_timings () ;
 int stub1 (struct cpuidle_device*,struct cpuidle_driver*,int) ;
 scalar_t__ tick_broadcast_enter () ;
 int tick_broadcast_exit () ;
 int trace_cpu_idle_rcuidle (int,int ) ;

int cpuidle_enter_state(struct cpuidle_device *dev, struct cpuidle_driver *drv,
   int index)
{
 int entered_state;

 struct cpuidle_state *target_state = &drv->states[index];
 bool broadcast = !!(target_state->flags & CPUIDLE_FLAG_TIMER_STOP);
 ktime_t time_start, time_end;






 if (broadcast && tick_broadcast_enter()) {
  index = find_deepest_state(drv, dev, target_state->exit_latency,
        CPUIDLE_FLAG_TIMER_STOP, 0);
  if (index < 0) {
   default_idle_call();
   return -EBUSY;
  }
  target_state = &drv->states[index];
  broadcast = 0;
 }


 sched_idle_set_state(target_state);

 trace_cpu_idle_rcuidle(index, dev->cpu);
 time_start = ns_to_ktime(local_clock());

 stop_critical_timings();
 entered_state = target_state->enter(dev, drv, index);
 start_critical_timings();

 sched_clock_idle_wakeup_event();
 time_end = ns_to_ktime(local_clock());
 trace_cpu_idle_rcuidle(PWR_EVENT_EXIT, dev->cpu);


 sched_idle_set_state(((void*)0));

 if (broadcast) {
  if (WARN_ON_ONCE(!irqs_disabled()))
   local_irq_disable();

  tick_broadcast_exit();
 }

 if (!cpuidle_state_is_coupled(drv, index))
  local_irq_enable();

 if (entered_state >= 0) {
  s64 diff, delay = drv->states[entered_state].exit_latency;
  int i;






  diff = ktime_us_delta(time_end, time_start);
  if (diff > INT_MAX)
   diff = INT_MAX;

  dev->last_residency = (int)diff;
  dev->states_usage[entered_state].time += dev->last_residency;
  dev->states_usage[entered_state].usage++;

  if (diff < drv->states[entered_state].target_residency) {
   for (i = entered_state - 1; i >= 0; i--) {
    if (drv->states[i].disabled ||
        dev->states_usage[i].disable)
     continue;


    dev->states_usage[entered_state].above++;
    break;
   }
  } else if (diff > delay) {
   for (i = entered_state + 1; i < drv->state_count; i++) {
    if (drv->states[i].disabled ||
        dev->states_usage[i].disable)
     continue;





    if (diff - delay >= drv->states[i].target_residency)
     dev->states_usage[entered_state].below++;

    break;
   }
  }
 } else {
  dev->last_residency = 0;
 }

 return entered_state;
}
