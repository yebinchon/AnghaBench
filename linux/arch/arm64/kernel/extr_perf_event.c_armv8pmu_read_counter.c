
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
 int armv8pmu_read_hw_counter (struct perf_event*) ;
 int pmccntr_el0 ;
 int pr_err (char*,int ,int) ;
 int read_sysreg (int ) ;
 int smp_processor_id () ;
 struct arm_pmu* to_arm_pmu (int ) ;

__attribute__((used)) static u64 armv8pmu_read_counter(struct perf_event *event)
{
 struct arm_pmu *cpu_pmu = to_arm_pmu(event->pmu);
 struct hw_perf_event *hwc = &event->hw;
 int idx = hwc->idx;
 u64 value = 0;

 if (!armv8pmu_counter_valid(cpu_pmu, idx))
  pr_err("CPU%u reading wrong counter %d\n",
   smp_processor_id(), idx);
 else if (idx == ARMV8_IDX_CYCLE_COUNTER)
  value = read_sysreg(pmccntr_el0);
 else
  value = armv8pmu_read_hw_counter(event);

 return value;
}
