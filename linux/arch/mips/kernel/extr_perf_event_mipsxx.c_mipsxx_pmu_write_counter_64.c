
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;


 unsigned int mipsxx_pmu_swizzle_perf_idx (unsigned int) ;
 int write_c0_perfcntr0_64 (int ) ;
 int write_c0_perfcntr1_64 (int ) ;
 int write_c0_perfcntr2_64 (int ) ;
 int write_c0_perfcntr3_64 (int ) ;

__attribute__((used)) static void mipsxx_pmu_write_counter_64(unsigned int idx, u64 val)
{
 idx = mipsxx_pmu_swizzle_perf_idx(idx);

 switch (idx) {
 case 0:
  write_c0_perfcntr0_64(val);
  return;
 case 1:
  write_c0_perfcntr1_64(val);
  return;
 case 2:
  write_c0_perfcntr2_64(val);
  return;
 case 3:
  write_c0_perfcntr3_64(val);
  return;
 }
}
