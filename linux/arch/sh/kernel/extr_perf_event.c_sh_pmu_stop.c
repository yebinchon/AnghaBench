
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct hw_perf_event {int idx; int state; } ;
struct perf_event {struct hw_perf_event hw; } ;
struct cpu_hw_events {int ** events; } ;
struct TYPE_2__ {int (* disable ) (struct hw_perf_event*,int) ;} ;


 int PERF_EF_UPDATE ;
 int PERF_HES_STOPPED ;
 int PERF_HES_UPTODATE ;
 int cpu_hw_events ;
 int sh_perf_event_update (struct perf_event*,struct hw_perf_event*,int) ;
 TYPE_1__* sh_pmu ;
 int stub1 (struct hw_perf_event*,int) ;
 struct cpu_hw_events* this_cpu_ptr (int *) ;

__attribute__((used)) static void sh_pmu_stop(struct perf_event *event, int flags)
{
 struct cpu_hw_events *cpuc = this_cpu_ptr(&cpu_hw_events);
 struct hw_perf_event *hwc = &event->hw;
 int idx = hwc->idx;

 if (!(event->hw.state & PERF_HES_STOPPED)) {
  sh_pmu->disable(hwc, idx);
  cpuc->events[idx] = ((void*)0);
  event->hw.state |= PERF_HES_STOPPED;
 }

 if ((flags & PERF_EF_UPDATE) && !(event->hw.state & PERF_HES_UPTODATE)) {
  sh_perf_event_update(event, &event->hw, idx);
  event->hw.state |= PERF_HES_UPTODATE;
 }
}
