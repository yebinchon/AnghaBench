
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct perf_event {int dummy; } ;
struct hrtimer {int dummy; } ;
typedef enum hrtimer_restart { ____Placeholder_hrtimer_restart } hrtimer_restart ;


 int HRTIMER_RESTART ;
 int PMU_NR_COUNTERS ;
 int __l2x0_pmu_disable () ;
 int __l2x0_pmu_enable () ;
 struct perf_event** events ;
 int hrtimer_forward_now (struct hrtimer*,int ) ;
 int l2x0_pmu_event_configure (struct perf_event*) ;
 int l2x0_pmu_event_read (struct perf_event*) ;
 int l2x0_pmu_poll_period ;
 int local_irq_restore (unsigned long) ;
 int local_irq_save (unsigned long) ;

__attribute__((used)) static enum hrtimer_restart l2x0_pmu_poll(struct hrtimer *hrtimer)
{
 unsigned long flags;
 int i;

 local_irq_save(flags);
 __l2x0_pmu_disable();

 for (i = 0; i < PMU_NR_COUNTERS; i++) {
  struct perf_event *event = events[i];

  if (!event)
   continue;

  l2x0_pmu_event_read(event);
  l2x0_pmu_event_configure(event);
 }

 __l2x0_pmu_enable();
 local_irq_restore(flags);

 hrtimer_forward_now(hrtimer, l2x0_pmu_poll_period);
 return HRTIMER_RESTART;
}
