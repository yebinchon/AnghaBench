
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct perf_event {int dummy; } ;
struct cpu_hw_events {int active_mask; struct perf_event** events; } ;
struct TYPE_2__ {int num_counters; } ;


 int cpu_hw_events ;
 int p4_pmu_disable_event (struct perf_event*) ;
 int p4_pmu_disable_pebs () ;
 int test_bit (int,int ) ;
 struct cpu_hw_events* this_cpu_ptr (int *) ;
 TYPE_1__ x86_pmu ;

__attribute__((used)) static void p4_pmu_disable_all(void)
{
 struct cpu_hw_events *cpuc = this_cpu_ptr(&cpu_hw_events);
 int idx;

 for (idx = 0; idx < x86_pmu.num_counters; idx++) {
  struct perf_event *event = cpuc->events[idx];
  if (!test_bit(idx, cpuc->active_mask))
   continue;
  p4_pmu_disable_event(event);
 }

 p4_pmu_disable_pebs();
}
