
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__* lbr_sel_map; } ;


 size_t PERF_SAMPLE_BRANCH_CALL_STACK_SHIFT ;
 TYPE_1__ x86_pmu ;

__attribute__((used)) static inline bool x86_pmu_has_lbr_callstack(void)
{
 return x86_pmu.lbr_sel_map &&
  x86_pmu.lbr_sel_map[PERF_SAMPLE_BRANCH_CALL_STACK_SHIFT] > 0;
}
