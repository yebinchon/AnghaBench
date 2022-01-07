
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct intel_uncore_box {int flags; TYPE_1__* pmu; } ;
struct TYPE_2__ {int pmu_idx; } ;


 int SKL_UNC_GLOBAL_CTL_CORE_ALL ;
 int SKL_UNC_PERF_GLOBAL_CTL ;
 int SNB_UNC_GLOBAL_CTL_EN ;
 int UNCORE_BOX_FLAG_CFL8_CBOX_MSR_OFFS ;
 int __set_bit (int ,int *) ;
 int wrmsrl (int ,int) ;

__attribute__((used)) static void skl_uncore_msr_init_box(struct intel_uncore_box *box)
{
 if (box->pmu->pmu_idx == 0) {
  wrmsrl(SKL_UNC_PERF_GLOBAL_CTL,
   SNB_UNC_GLOBAL_CTL_EN | SKL_UNC_GLOBAL_CTL_CORE_ALL);
 }


 if (box->pmu->pmu_idx == 7)
  __set_bit(UNCORE_BOX_FLAG_CFL8_CBOX_MSR_OFFS, &box->flags);
}
