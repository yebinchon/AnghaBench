
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hw_perf_event {size_t idx; } ;
struct perf_event {struct hw_perf_event hw; } ;


 int PERF_EF_UPDATE ;
 int ** events ;
 int hrtimer_cancel (int *) ;
 int l2x0_pmu_event_stop (struct perf_event*,int ) ;
 int l2x0_pmu_hrtimer ;
 scalar_t__ l2x0_pmu_num_active_counters () ;

__attribute__((used)) static void l2x0_pmu_event_del(struct perf_event *event, int flags)
{
 struct hw_perf_event *hw = &event->hw;

 l2x0_pmu_event_stop(event, PERF_EF_UPDATE);

 events[hw->idx] = ((void*)0);
 hw->idx = -1;

 if (l2x0_pmu_num_active_counters() == 0)
  hrtimer_cancel(&l2x0_pmu_hrtimer);
}
