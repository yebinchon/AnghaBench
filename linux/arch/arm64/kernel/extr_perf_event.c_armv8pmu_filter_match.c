
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {unsigned long config_base; } ;
struct perf_event {TYPE_1__ hw; } ;


 unsigned long ARMV8_PMUV3_PERFCTR_CHAIN ;
 unsigned long ARMV8_PMU_EVTYPE_EVENT ;

__attribute__((used)) static int armv8pmu_filter_match(struct perf_event *event)
{
 unsigned long evtype = event->hw.config_base & ARMV8_PMU_EVTYPE_EVENT;
 return evtype != ARMV8_PMUV3_PERFCTR_CHAIN;
}
