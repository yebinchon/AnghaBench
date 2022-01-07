
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hw_perf_event {int idx; int state; int config; } ;
struct perf_event {struct hw_perf_event hw; } ;


 int PERF_EF_RELOAD ;
 int PERF_HES_UPTODATE ;
 scalar_t__ WARN_ON_ONCE (int) ;
 int XTENSA_PMU_PMCTRL (int) ;
 int set_er (int ,int ) ;
 int xtensa_perf_event_set_period (struct perf_event*,struct hw_perf_event*,int) ;

__attribute__((used)) static void xtensa_pmu_start(struct perf_event *event, int flags)
{
 struct hw_perf_event *hwc = &event->hw;
 int idx = hwc->idx;

 if (WARN_ON_ONCE(idx == -1))
  return;

 if (flags & PERF_EF_RELOAD) {
  WARN_ON_ONCE(!(event->hw.state & PERF_HES_UPTODATE));
  xtensa_perf_event_set_period(event, hwc, idx);
 }

 hwc->state = 0;

 set_er(hwc->config, XTENSA_PMU_PMCTRL(idx));
}
