
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u64 ;


 int ENOENT ;
 int HW_OP_UNSUPPORTED ;
 size_t PERF_COUNT_HW_MAX ;

__attribute__((used)) static int
nds32_pmu_map_hw_event(const unsigned int (*event_map)[PERF_COUNT_HW_MAX],
         u64 config)
{
 int mapping;

 if (config >= PERF_COUNT_HW_MAX)
  return -ENOENT;

 mapping = (*event_map)[config];
 return mapping == HW_OP_UNSUPPORTED ? -ENOENT : mapping;
}
