
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pmu_hw_events {int used_mask; } ;
struct arm_pmu {int num_events; } ;


 int ARMV8_IDX_COUNTER0 ;
 int EAGAIN ;
 int test_and_set_bit (int,int ) ;

__attribute__((used)) static int armv8pmu_get_single_idx(struct pmu_hw_events *cpuc,
        struct arm_pmu *cpu_pmu)
{
 int idx;

 for (idx = ARMV8_IDX_COUNTER0; idx < cpu_pmu->num_events; idx ++) {
  if (!test_and_set_bit(idx, cpuc->used_mask))
   return idx;
 }
 return -EAGAIN;
}
