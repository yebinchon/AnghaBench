
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hw_perf_event {int state; unsigned long idx; } ;
struct perf_event {struct hw_perf_event hw; } ;
struct cpu_hw_events {unsigned long idx_mask; scalar_t__ enabled; } ;


 int PERFMON_CMD_ENABLE ;
 int PERF_EF_RELOAD ;
 int PERF_HES_STOPPED ;
 int PERF_HES_UPTODATE ;
 scalar_t__ WARN_ON_ONCE (int) ;
 int alpha_perf_event_set_period (struct perf_event*,struct hw_perf_event*,unsigned long) ;
 int cpu_hw_events ;
 struct cpu_hw_events* this_cpu_ptr (int *) ;
 int wrperfmon (int ,unsigned long) ;

__attribute__((used)) static void alpha_pmu_start(struct perf_event *event, int flags)
{
 struct hw_perf_event *hwc = &event->hw;
 struct cpu_hw_events *cpuc = this_cpu_ptr(&cpu_hw_events);

 if (WARN_ON_ONCE(!(hwc->state & PERF_HES_STOPPED)))
  return;

 if (flags & PERF_EF_RELOAD) {
  WARN_ON_ONCE(!(hwc->state & PERF_HES_UPTODATE));
  alpha_perf_event_set_period(event, hwc, hwc->idx);
 }

 hwc->state = 0;

 cpuc->idx_mask |= 1UL<<hwc->idx;
 if (cpuc->enabled)
  wrperfmon(PERFMON_CMD_ENABLE, (1UL<<hwc->idx));
}
