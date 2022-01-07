
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct hw_perf_event {int idx; int state; } ;
struct perf_event {struct hw_perf_event hw; } ;
struct cpu_hw_events {struct perf_event** events; } ;
struct TYPE_2__ {int (* enable ) (struct hw_perf_event*,int) ;} ;


 int PERF_EF_RELOAD ;
 int PERF_HES_UPTODATE ;
 scalar_t__ WARN_ON_ONCE (int) ;
 int cpu_hw_events ;
 TYPE_1__* sh_pmu ;
 int stub1 (struct hw_perf_event*,int) ;
 struct cpu_hw_events* this_cpu_ptr (int *) ;

__attribute__((used)) static void sh_pmu_start(struct perf_event *event, int flags)
{
 struct cpu_hw_events *cpuc = this_cpu_ptr(&cpu_hw_events);
 struct hw_perf_event *hwc = &event->hw;
 int idx = hwc->idx;

 if (WARN_ON_ONCE(idx == -1))
  return;

 if (flags & PERF_EF_RELOAD)
  WARN_ON_ONCE(!(event->hw.state & PERF_HES_UPTODATE));

 cpuc->events[idx] = event;
 event->hw.state = 0;
 sh_pmu->enable(hwc, idx);
}
