
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pmu_hw_events {struct perf_event** events; } ;
struct hw_perf_event {size_t idx; int state; } ;
struct perf_event {struct hw_perf_event hw; } ;
struct TYPE_2__ {int hw_events; } ;


 int PERF_EF_RELOAD ;
 int PERF_EF_START ;
 int PERF_HES_STOPPED ;
 int PERF_HES_UPTODATE ;
 TYPE_1__ csky_pmu ;
 int csky_pmu_start (struct perf_event*,int ) ;
 int perf_event_update_userpage (struct perf_event*) ;
 struct pmu_hw_events* this_cpu_ptr (int ) ;

__attribute__((used)) static int csky_pmu_add(struct perf_event *event, int flags)
{
 struct pmu_hw_events *hw_events = this_cpu_ptr(csky_pmu.hw_events);
 struct hw_perf_event *hwc = &event->hw;

 hw_events->events[hwc->idx] = event;

 hwc->state = PERF_HES_UPTODATE | PERF_HES_STOPPED;

 if (flags & PERF_EF_START)
  csky_pmu_start(event, PERF_EF_RELOAD);

 perf_event_update_userpage(event);

 return 0;
}
