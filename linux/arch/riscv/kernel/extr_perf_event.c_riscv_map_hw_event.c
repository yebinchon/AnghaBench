
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t u64 ;
struct TYPE_2__ {size_t max_events; int* hw_events; } ;


 int EINVAL ;
 TYPE_1__* riscv_pmu ;

__attribute__((used)) static int riscv_map_hw_event(u64 config)
{
 if (config >= riscv_pmu->max_events)
  return -EINVAL;

 return riscv_pmu->hw_events[config];
}
