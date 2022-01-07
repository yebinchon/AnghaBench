
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct arm_pmu {int dummy; } ;


 int ARMV8_IDX_COUNTER_LAST (struct arm_pmu*) ;
 int ARMV8_IDX_CYCLE_COUNTER ;

__attribute__((used)) static inline int armv8pmu_counter_valid(struct arm_pmu *cpu_pmu, int idx)
{
 return idx >= ARMV8_IDX_CYCLE_COUNTER &&
  idx <= ARMV8_IDX_COUNTER_LAST(cpu_pmu);
}
