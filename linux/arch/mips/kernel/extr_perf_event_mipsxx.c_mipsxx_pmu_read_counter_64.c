
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;


 int WARN_ONCE (int,char*,unsigned int) ;
 unsigned int mipsxx_pmu_swizzle_perf_idx (unsigned int) ;
 int read_c0_perfcntr0_64 () ;
 int read_c0_perfcntr1_64 () ;
 int read_c0_perfcntr2_64 () ;
 int read_c0_perfcntr3_64 () ;

__attribute__((used)) static u64 mipsxx_pmu_read_counter_64(unsigned int idx)
{
 idx = mipsxx_pmu_swizzle_perf_idx(idx);

 switch (idx) {
 case 0:
  return read_c0_perfcntr0_64();
 case 1:
  return read_c0_perfcntr1_64();
 case 2:
  return read_c0_perfcntr2_64();
 case 3:
  return read_c0_perfcntr3_64();
 default:
  WARN_ONCE(1, "Invalid performance counter number (%d)\n", idx);
  return 0;
 }
}
