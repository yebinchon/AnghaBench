
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int u32 ;
struct kvm_vcpu {int dummy; } ;
struct kvm_pmu {int fixed_ctr_ctrl; int global_status; int global_ctrl; int global_ovf_ctrl; int* counter_bitmask; } ;
struct kvm_pmc {int eventsel; } ;


 size_t KVM_PMC_FIXED ;
 size_t KVM_PMC_GP ;




 int MSR_IA32_PERFCTR0 ;
 int MSR_P6_EVNTSEL0 ;
 struct kvm_pmc* get_fixed_pmc (struct kvm_pmu*,int) ;
 struct kvm_pmc* get_gp_pmc (struct kvm_pmu*,int,int ) ;
 int pmc_read_counter (struct kvm_pmc*) ;
 struct kvm_pmu* vcpu_to_pmu (struct kvm_vcpu*) ;

__attribute__((used)) static int intel_pmu_get_msr(struct kvm_vcpu *vcpu, u32 msr, u64 *data)
{
 struct kvm_pmu *pmu = vcpu_to_pmu(vcpu);
 struct kvm_pmc *pmc;

 switch (msr) {
 case 131:
  *data = pmu->fixed_ctr_ctrl;
  return 0;
 case 128:
  *data = pmu->global_status;
  return 0;
 case 130:
  *data = pmu->global_ctrl;
  return 0;
 case 129:
  *data = pmu->global_ovf_ctrl;
  return 0;
 default:
  if ((pmc = get_gp_pmc(pmu, msr, MSR_IA32_PERFCTR0))) {
   u64 val = pmc_read_counter(pmc);
   *data = val & pmu->counter_bitmask[KVM_PMC_GP];
   return 0;
  } else if ((pmc = get_fixed_pmc(pmu, msr))) {
   u64 val = pmc_read_counter(pmc);
   *data = val & pmu->counter_bitmask[KVM_PMC_FIXED];
   return 0;
  } else if ((pmc = get_gp_pmc(pmu, msr, MSR_P6_EVNTSEL0))) {
   *data = pmc->eventsel;
   return 0;
  }
 }

 return 1;
}
