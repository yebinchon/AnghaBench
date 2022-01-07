
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hw_perf_event {int dummy; } ;
struct perf_event {struct hw_perf_event hw; } ;
struct cpu_hw_events {int dummy; } ;


 int active_event_index (struct cpu_hw_events*,struct perf_event*) ;
 int cpu_hw_events ;
 int sparc_perf_event_update (struct perf_event*,struct hw_perf_event*,int) ;
 struct cpu_hw_events* this_cpu_ptr (int *) ;

__attribute__((used)) static void sparc_pmu_read(struct perf_event *event)
{
 struct cpu_hw_events *cpuc = this_cpu_ptr(&cpu_hw_events);
 int idx = active_event_index(cpuc, event);
 struct hw_perf_event *hwc = &event->hw;

 sparc_perf_event_update(event, hwc, idx);
}
