
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int u32 ;
struct msr_data {int data; int index; } ;
struct kvm_vcpu {int dummy; } ;
struct kvm_pmu {int reserved_bits; } ;
struct kvm_pmc {int eventsel; int counter; } ;


 int PMU_TYPE_COUNTER ;
 int PMU_TYPE_EVNTSEL ;
 struct kvm_pmc* get_gp_pmc_amd (struct kvm_pmu*,int ,int ) ;
 scalar_t__ pmc_read_counter (struct kvm_pmc*) ;
 int reprogram_gp_counter (struct kvm_pmc*,int) ;
 struct kvm_pmu* vcpu_to_pmu (struct kvm_vcpu*) ;

__attribute__((used)) static int amd_pmu_set_msr(struct kvm_vcpu *vcpu, struct msr_data *msr_info)
{
 struct kvm_pmu *pmu = vcpu_to_pmu(vcpu);
 struct kvm_pmc *pmc;
 u32 msr = msr_info->index;
 u64 data = msr_info->data;


 pmc = get_gp_pmc_amd(pmu, msr, PMU_TYPE_COUNTER);
 if (pmc) {
  pmc->counter += data - pmc_read_counter(pmc);
  return 0;
 }

 pmc = get_gp_pmc_amd(pmu, msr, PMU_TYPE_EVNTSEL);
 if (pmc) {
  if (data == pmc->eventsel)
   return 0;
  if (!(data & pmu->reserved_bits)) {
   reprogram_gp_counter(pmc, data);
   return 0;
  }
 }

 return 1;
}
