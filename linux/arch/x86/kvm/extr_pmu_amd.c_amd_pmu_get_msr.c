
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int u32 ;
struct kvm_vcpu {int dummy; } ;
struct kvm_pmu {int dummy; } ;
struct kvm_pmc {int eventsel; } ;


 int PMU_TYPE_COUNTER ;
 int PMU_TYPE_EVNTSEL ;
 struct kvm_pmc* get_gp_pmc_amd (struct kvm_pmu*,int ,int ) ;
 int pmc_read_counter (struct kvm_pmc*) ;
 struct kvm_pmu* vcpu_to_pmu (struct kvm_vcpu*) ;

__attribute__((used)) static int amd_pmu_get_msr(struct kvm_vcpu *vcpu, u32 msr, u64 *data)
{
 struct kvm_pmu *pmu = vcpu_to_pmu(vcpu);
 struct kvm_pmc *pmc;


 pmc = get_gp_pmc_amd(pmu, msr, PMU_TYPE_COUNTER);
 if (pmc) {
  *data = pmc_read_counter(pmc);
  return 0;
 }

 pmc = get_gp_pmc_amd(pmu, msr, PMU_TYPE_EVNTSEL);
 if (pmc) {
  *data = pmc->eventsel;
  return 0;
 }

 return 1;
}
