
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hw_perf_event {int idx; int state; } ;
struct perf_event {struct hw_perf_event hw; } ;


 int EAGAIN ;
 int HRTIMER_MODE_REL_PINNED ;
 int PERF_EF_START ;
 int PERF_HES_STOPPED ;
 int PERF_HES_UPTODATE ;
 struct perf_event** events ;
 int hrtimer_start (int *,int ,int ) ;
 int l2x0_pmu_event_configure (struct perf_event*) ;
 int l2x0_pmu_event_start (struct perf_event*,int ) ;
 int l2x0_pmu_find_idx () ;
 int l2x0_pmu_hrtimer ;
 scalar_t__ l2x0_pmu_num_active_counters () ;
 int l2x0_pmu_poll_period ;

__attribute__((used)) static int l2x0_pmu_event_add(struct perf_event *event, int flags)
{
 struct hw_perf_event *hw = &event->hw;
 int idx = l2x0_pmu_find_idx();

 if (idx == -1)
  return -EAGAIN;






 if (l2x0_pmu_num_active_counters() == 0)
  hrtimer_start(&l2x0_pmu_hrtimer, l2x0_pmu_poll_period,
         HRTIMER_MODE_REL_PINNED);

 events[idx] = event;
 hw->idx = idx;

 l2x0_pmu_event_configure(event);

 hw->state = PERF_HES_STOPPED | PERF_HES_UPTODATE;

 if (flags & PERF_EF_START)
  l2x0_pmu_event_start(event, 0);

 return 0;
}
