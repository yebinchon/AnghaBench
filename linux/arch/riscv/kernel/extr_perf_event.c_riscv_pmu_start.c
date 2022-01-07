
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hw_perf_event {int state; int idx; int prev_count; } ;
struct perf_event {struct hw_perf_event hw; } ;


 int PERF_EF_RELOAD ;
 int PERF_HES_STOPPED ;
 int PERF_HES_UPTODATE ;
 scalar_t__ WARN_ON_ONCE (int) ;
 int local64_set (int *,int ) ;
 int perf_event_update_userpage (struct perf_event*) ;
 int read_counter (int ) ;

__attribute__((used)) static void riscv_pmu_start(struct perf_event *event, int flags)
{
 struct hw_perf_event *hwc = &event->hw;

 if (WARN_ON_ONCE(!(event->hw.state & PERF_HES_STOPPED)))
  return;

 if (flags & PERF_EF_RELOAD) {
  WARN_ON_ONCE(!(event->hw.state & PERF_HES_UPTODATE));





 }

 hwc->state = 0;
 perf_event_update_userpage(event);






 local64_set(&hwc->prev_count, read_counter(hwc->idx));
}
