
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pmu_hw_events {int ** events; } ;
struct hw_perf_event {size_t idx; } ;
struct perf_event {struct hw_perf_event hw; } ;
struct TYPE_2__ {int hw_events; } ;


 int PERF_EF_UPDATE ;
 TYPE_1__ csky_pmu ;
 int csky_pmu_stop (struct perf_event*,int ) ;
 int perf_event_update_userpage (struct perf_event*) ;
 struct pmu_hw_events* this_cpu_ptr (int ) ;

__attribute__((used)) static void csky_pmu_del(struct perf_event *event, int flags)
{
 struct pmu_hw_events *hw_events = this_cpu_ptr(csky_pmu.hw_events);
 struct hw_perf_event *hwc = &event->hw;

 csky_pmu_stop(event, PERF_EF_UPDATE);

 hw_events->events[hwc->idx] = ((void*)0);

 perf_event_update_userpage(event);
}
