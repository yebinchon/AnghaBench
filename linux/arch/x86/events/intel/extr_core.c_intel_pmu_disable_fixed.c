
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct hw_perf_event {int idx; int config_base; } ;


 int INTEL_PMC_IDX_FIXED ;
 int rdmsrl (int ,int) ;
 int wrmsrl (int ,int) ;

__attribute__((used)) static void intel_pmu_disable_fixed(struct hw_perf_event *hwc)
{
 int idx = hwc->idx - INTEL_PMC_IDX_FIXED;
 u64 ctrl_val, mask;

 mask = 0xfULL << (idx * 4);

 rdmsrl(hwc->config_base, ctrl_val);
 ctrl_val &= ~mask;
 wrmsrl(hwc->config_base, ctrl_val);
}
