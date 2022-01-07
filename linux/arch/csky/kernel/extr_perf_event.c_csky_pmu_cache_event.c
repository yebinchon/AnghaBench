
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;


 int EINVAL ;
 unsigned int PERF_COUNT_HW_CACHE_MAX ;
 unsigned int PERF_COUNT_HW_CACHE_OP_MAX ;
 unsigned int PERF_COUNT_HW_CACHE_RESULT_MAX ;
 int*** csky_pmu_cache_map ;

__attribute__((used)) static int csky_pmu_cache_event(u64 config)
{
 unsigned int cache_type, cache_op, cache_result;

 cache_type = (config >> 0) & 0xff;
 cache_op = (config >> 8) & 0xff;
 cache_result = (config >> 16) & 0xff;

 if (cache_type >= PERF_COUNT_HW_CACHE_MAX)
  return -EINVAL;
 if (cache_op >= PERF_COUNT_HW_CACHE_OP_MAX)
  return -EINVAL;
 if (cache_result >= PERF_COUNT_HW_CACHE_RESULT_MAX)
  return -EINVAL;

 return csky_pmu_cache_map[cache_type][cache_op][cache_result];
}
