
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct intel_uncore_box {TYPE_1__* pmu; } ;
struct TYPE_2__ {scalar_t__ pmu_idx; } ;


 int SNB_UNC_PERF_GLOBAL_CTL ;
 int wrmsrl (int ,int ) ;

__attribute__((used)) static void snb_uncore_msr_exit_box(struct intel_uncore_box *box)
{
 if (box->pmu->pmu_idx == 0)
  wrmsrl(SNB_UNC_PERF_GLOBAL_CTL, 0);
}
