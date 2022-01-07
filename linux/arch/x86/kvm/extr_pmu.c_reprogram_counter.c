
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct kvm_pmu {int fixed_ctr_ctrl; } ;
struct kvm_pmc {int eventsel; } ;
struct TYPE_4__ {TYPE_1__* pmu_ops; } ;
struct TYPE_3__ {struct kvm_pmc* (* pmc_idx_to_pmc ) (struct kvm_pmu*,int) ;} ;


 int INTEL_PMC_IDX_FIXED ;
 int fixed_ctrl_field (int ,int) ;
 TYPE_2__* kvm_x86_ops ;
 scalar_t__ pmc_is_gp (struct kvm_pmc*) ;
 int reprogram_fixed_counter (struct kvm_pmc*,int ,int) ;
 int reprogram_gp_counter (struct kvm_pmc*,int ) ;
 struct kvm_pmc* stub1 (struct kvm_pmu*,int) ;

void reprogram_counter(struct kvm_pmu *pmu, int pmc_idx)
{
 struct kvm_pmc *pmc = kvm_x86_ops->pmu_ops->pmc_idx_to_pmc(pmu, pmc_idx);

 if (!pmc)
  return;

 if (pmc_is_gp(pmc))
  reprogram_gp_counter(pmc, pmc->eventsel);
 else {
  int idx = pmc_idx - INTEL_PMC_IDX_FIXED;
  u8 ctrl = fixed_ctrl_field(pmu->fixed_ctr_ctrl, idx);

  reprogram_fixed_counter(pmc, ctrl, idx);
 }
}
