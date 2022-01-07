
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct kvm_vcpu {int dummy; } ;


 int ARMV8_PMU_CYCLE_IDX ;
 int ARMV8_PMU_PMCR_N_MASK ;
 int ARMV8_PMU_PMCR_N_SHIFT ;
 int PMCR_EL0 ;
 int __vcpu_sys_reg (struct kvm_vcpu*,int ) ;
 int kvm_inject_undefined (struct kvm_vcpu*) ;

__attribute__((used)) static bool pmu_counter_idx_valid(struct kvm_vcpu *vcpu, u64 idx)
{
 u64 pmcr, val;

 pmcr = __vcpu_sys_reg(vcpu, PMCR_EL0);
 val = (pmcr >> ARMV8_PMU_PMCR_N_SHIFT) & ARMV8_PMU_PMCR_N_MASK;
 if (idx >= val && idx != ARMV8_PMU_CYCLE_IDX) {
  kvm_inject_undefined(vcpu);
  return 0;
 }

 return 1;
}
