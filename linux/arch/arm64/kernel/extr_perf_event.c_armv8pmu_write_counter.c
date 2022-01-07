
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct hw_perf_event {int idx; } ;
struct perf_event {struct hw_perf_event hw; int pmu; } ;
struct arm_pmu {int dummy; } ;


 int ARMV8_IDX_CYCLE_COUNTER ;
 int armv8pmu_counter_valid (struct arm_pmu*,int) ;
 int armv8pmu_event_is_64bit (struct perf_event*) ;
 int armv8pmu_write_hw_counter (struct perf_event*,int) ;
 int pmccntr_el0 ;
 int pr_err (char*,int ,int) ;
 int smp_processor_id () ;
 struct arm_pmu* to_arm_pmu (int ) ;
 int write_sysreg (int,int ) ;

__attribute__((used)) static void armv8pmu_write_counter(struct perf_event *event, u64 value)
{
 struct arm_pmu *cpu_pmu = to_arm_pmu(event->pmu);
 struct hw_perf_event *hwc = &event->hw;
 int idx = hwc->idx;

 if (!armv8pmu_counter_valid(cpu_pmu, idx))
  pr_err("CPU%u writing wrong counter %d\n",
   smp_processor_id(), idx);
 else if (idx == ARMV8_IDX_CYCLE_COUNTER) {






  if (!armv8pmu_event_is_64bit(event))
   value |= 0xffffffff00000000ULL;
  write_sysreg(value, pmccntr_el0);
 } else
  armv8pmu_write_hw_counter(event, value);
}
