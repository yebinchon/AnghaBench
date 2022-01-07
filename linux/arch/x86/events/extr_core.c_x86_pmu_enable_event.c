
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct perf_event {int hw; } ;
struct TYPE_2__ {int enabled; } ;


 int ARCH_PERFMON_EVENTSEL_ENABLE ;
 scalar_t__ __this_cpu_read (int ) ;
 int __x86_pmu_enable_event (int *,int ) ;
 TYPE_1__ cpu_hw_events ;

void x86_pmu_enable_event(struct perf_event *event)
{
 if (__this_cpu_read(cpu_hw_events.enabled))
  __x86_pmu_enable_event(&event->hw,
           ARCH_PERFMON_EVENTSEL_ENABLE);
}
