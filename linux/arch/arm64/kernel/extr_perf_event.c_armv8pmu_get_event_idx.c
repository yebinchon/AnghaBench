
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pmu_hw_events {int used_mask; } ;
struct hw_perf_event {unsigned long config_base; } ;
struct perf_event {struct hw_perf_event hw; int pmu; } ;
struct arm_pmu {int dummy; } ;


 int ARMV8_IDX_CYCLE_COUNTER ;
 unsigned long ARMV8_PMUV3_PERFCTR_CPU_CYCLES ;
 unsigned long ARMV8_PMU_EVTYPE_EVENT ;
 scalar_t__ armv8pmu_event_is_64bit (struct perf_event*) ;
 int armv8pmu_get_chain_idx (struct pmu_hw_events*,struct arm_pmu*) ;
 int armv8pmu_get_single_idx (struct pmu_hw_events*,struct arm_pmu*) ;
 int test_and_set_bit (int,int ) ;
 struct arm_pmu* to_arm_pmu (int ) ;

__attribute__((used)) static int armv8pmu_get_event_idx(struct pmu_hw_events *cpuc,
      struct perf_event *event)
{
 struct arm_pmu *cpu_pmu = to_arm_pmu(event->pmu);
 struct hw_perf_event *hwc = &event->hw;
 unsigned long evtype = hwc->config_base & ARMV8_PMU_EVTYPE_EVENT;


 if (evtype == ARMV8_PMUV3_PERFCTR_CPU_CYCLES) {
  if (!test_and_set_bit(ARMV8_IDX_CYCLE_COUNTER, cpuc->used_mask))
   return ARMV8_IDX_CYCLE_COUNTER;
 }




 if (armv8pmu_event_is_64bit(event))
  return armv8pmu_get_chain_idx(cpuc, cpu_pmu);
 else
  return armv8pmu_get_single_idx(cpuc, cpu_pmu);
}
