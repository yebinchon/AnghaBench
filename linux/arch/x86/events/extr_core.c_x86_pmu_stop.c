
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct hw_perf_event {size_t idx; int state; } ;
struct perf_event {struct hw_perf_event hw; } ;
struct cpu_hw_events {int ** events; int active_mask; } ;
struct TYPE_2__ {int (* disable ) (struct perf_event*) ;} ;


 int PERF_EF_UPDATE ;
 int PERF_HES_STOPPED ;
 int PERF_HES_UPTODATE ;
 int WARN_ON_ONCE (int) ;
 int __clear_bit (size_t,int ) ;
 int cpu_hw_events ;
 int stub1 (struct perf_event*) ;
 scalar_t__ test_bit (size_t,int ) ;
 struct cpu_hw_events* this_cpu_ptr (int *) ;
 int x86_perf_event_update (struct perf_event*) ;
 TYPE_1__ x86_pmu ;

void x86_pmu_stop(struct perf_event *event, int flags)
{
 struct cpu_hw_events *cpuc = this_cpu_ptr(&cpu_hw_events);
 struct hw_perf_event *hwc = &event->hw;

 if (test_bit(hwc->idx, cpuc->active_mask)) {
  x86_pmu.disable(event);
  __clear_bit(hwc->idx, cpuc->active_mask);
  cpuc->events[hwc->idx] = ((void*)0);
  WARN_ON_ONCE(hwc->state & PERF_HES_STOPPED);
  hwc->state |= PERF_HES_STOPPED;
 }

 if ((flags & PERF_EF_UPDATE) && !(hwc->state & PERF_HES_UPTODATE)) {




  x86_perf_event_update(event);
  hwc->state |= PERF_HES_UPTODATE;
 }
}
