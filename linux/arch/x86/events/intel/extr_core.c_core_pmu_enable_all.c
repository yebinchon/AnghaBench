
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct hw_perf_event {int dummy; } ;
struct cpu_hw_events {TYPE_1__** events; int active_mask; } ;
struct TYPE_6__ {int num_counters; } ;
struct TYPE_5__ {scalar_t__ exclude_host; } ;
struct TYPE_4__ {TYPE_2__ attr; struct hw_perf_event hw; } ;


 int ARCH_PERFMON_EVENTSEL_ENABLE ;
 int __x86_pmu_enable_event (struct hw_perf_event*,int ) ;
 int cpu_hw_events ;
 int test_bit (int,int ) ;
 struct cpu_hw_events* this_cpu_ptr (int *) ;
 TYPE_3__ x86_pmu ;

__attribute__((used)) static void core_pmu_enable_all(int added)
{
 struct cpu_hw_events *cpuc = this_cpu_ptr(&cpu_hw_events);
 int idx;

 for (idx = 0; idx < x86_pmu.num_counters; idx++) {
  struct hw_perf_event *hwc = &cpuc->events[idx]->hw;

  if (!test_bit(idx, cpuc->active_mask) ||
    cpuc->events[idx]->attr.exclude_host)
   continue;

  __x86_pmu_enable_event(hwc, ARCH_PERFMON_EVENTSEL_ENABLE);
 }
}
