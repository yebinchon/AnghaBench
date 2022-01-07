
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;


 int PERF_SAMPLE_BRANCH_ANY ;
 int PERF_SAMPLE_BRANCH_ANY_CALL ;
 int PERF_SAMPLE_BRANCH_ANY_RETURN ;
 int PERF_SAMPLE_BRANCH_CALL ;
 int PERF_SAMPLE_BRANCH_IND_CALL ;
 int POWER8_MMCRA_IFM1 ;

__attribute__((used)) static u64 power8_bhrb_filter_map(u64 branch_sample_type)
{
 u64 pmu_bhrb_filter = 0;
 if (branch_sample_type & PERF_SAMPLE_BRANCH_ANY)
  return pmu_bhrb_filter;


 if (branch_sample_type & PERF_SAMPLE_BRANCH_ANY_RETURN)
  return -1;

 if (branch_sample_type & PERF_SAMPLE_BRANCH_IND_CALL)
  return -1;

 if (branch_sample_type & PERF_SAMPLE_BRANCH_CALL)
  return -1;

 if (branch_sample_type & PERF_SAMPLE_BRANCH_ANY_CALL) {
  pmu_bhrb_filter |= POWER8_MMCRA_IFM1;
  return pmu_bhrb_filter;
 }


 return -1;
}
