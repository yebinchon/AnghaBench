
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
struct TYPE_2__ {int**** cache_events; } ;


 int EINVAL ;
 int ENOENT ;
 unsigned int PERF_COUNT_HW_CACHE_MAX ;
 unsigned int PERF_COUNT_HW_CACHE_OP_MAX ;
 unsigned int PERF_COUNT_HW_CACHE_RESULT_MAX ;
 int RISCV_OP_UNSUPP ;
 int riscv_map_cache_decode (int ,unsigned int*,unsigned int*,unsigned int*) ;
 TYPE_1__* riscv_pmu ;

__attribute__((used)) static int riscv_map_cache_event(u64 config)
{
 unsigned int type, op, result;
 int err = -ENOENT;
  int code;

 err = riscv_map_cache_decode(config, &type, &op, &result);
 if (!riscv_pmu->cache_events || err)
  return err;

 if (type >= PERF_COUNT_HW_CACHE_MAX ||
     op >= PERF_COUNT_HW_CACHE_OP_MAX ||
     result >= PERF_COUNT_HW_CACHE_RESULT_MAX)
  return -EINVAL;

 code = (*riscv_pmu->cache_events)[type][op][result];
 if (code == RISCV_OP_UNSUPP)
  return -EINVAL;

 return code;
}
