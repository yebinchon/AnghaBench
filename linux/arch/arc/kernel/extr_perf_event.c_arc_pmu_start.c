
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hw_perf_event {int idx; int state; int config; } ;
struct perf_event {struct hw_perf_event hw; } ;


 int ARC_REG_PCT_CONFIG ;
 int ARC_REG_PCT_INDEX ;
 int ARC_REG_PCT_INT_CTRL ;
 int BIT (int) ;
 int PERF_EF_RELOAD ;
 int PERF_HES_UPTODATE ;
 scalar_t__ WARN_ON_ONCE (int) ;
 int arc_pmu_event_set_period (struct perf_event*) ;
 scalar_t__ is_sampling_event (struct perf_event*) ;
 int read_aux_reg (int ) ;
 int write_aux_reg (int ,int) ;

__attribute__((used)) static void arc_pmu_start(struct perf_event *event, int flags)
{
 struct hw_perf_event *hwc = &event->hw;
 int idx = hwc->idx;

 if (WARN_ON_ONCE(idx == -1))
  return;

 if (flags & PERF_EF_RELOAD)
  WARN_ON_ONCE(!(hwc->state & PERF_HES_UPTODATE));

 hwc->state = 0;

 arc_pmu_event_set_period(event);


 if (is_sampling_event(event))
  write_aux_reg(ARC_REG_PCT_INT_CTRL,
         read_aux_reg(ARC_REG_PCT_INT_CTRL) | BIT(idx));


 write_aux_reg(ARC_REG_PCT_INDEX, idx);
 write_aux_reg(ARC_REG_PCT_CONFIG, hwc->config);
}
