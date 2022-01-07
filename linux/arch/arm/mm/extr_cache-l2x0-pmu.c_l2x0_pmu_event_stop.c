
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hw_perf_event {int state; int idx; } ;
struct perf_event {struct hw_perf_event hw; } ;


 int PERF_EF_UPDATE ;
 int PERF_HES_STOPPED ;
 int PERF_HES_UPTODATE ;
 scalar_t__ WARN_ON_ONCE (int) ;
 int __l2x0_pmu_event_disable (int ) ;
 int l2x0_pmu_event_read (struct perf_event*) ;

__attribute__((used)) static void l2x0_pmu_event_stop(struct perf_event *event, int flags)
{
 struct hw_perf_event *hw = &event->hw;

 if (WARN_ON_ONCE(event->hw.state & PERF_HES_STOPPED))
  return;

 __l2x0_pmu_event_disable(hw->idx);

 hw->state |= PERF_HES_STOPPED;

 if (flags & PERF_EF_UPDATE) {
  l2x0_pmu_event_read(event);
  hw->state |= PERF_HES_UPTODATE;
 }
}
