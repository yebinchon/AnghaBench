
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct hw_perf_event {int idx; int config_base; } ;
struct perf_event {struct hw_perf_event hw; } ;


 int ARMV8_PMUV3_PERFCTR_CHAIN ;
 int ARMV8_PMU_INCLUDE_EL2 ;
 scalar_t__ armv8pmu_event_is_chained (struct perf_event*) ;
 int armv8pmu_write_evtype (int,int) ;

__attribute__((used)) static inline void armv8pmu_write_event_type(struct perf_event *event)
{
 struct hw_perf_event *hwc = &event->hw;
 int idx = hwc->idx;






 if (armv8pmu_event_is_chained(event)) {
  u32 chain_evt = ARMV8_PMUV3_PERFCTR_CHAIN |
    ARMV8_PMU_INCLUDE_EL2;

  armv8pmu_write_evtype(idx - 1, hwc->config_base);
  armv8pmu_write_evtype(idx, chain_evt);
 } else {
  armv8pmu_write_evtype(idx, hwc->config_base);
 }
}
