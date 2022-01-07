
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct kvm_vcpu {int dummy; } ;
struct kvm_pmu {int dummy; } ;


 int PMU_TYPE_COUNTER ;
 int PMU_TYPE_EVNTSEL ;
 scalar_t__ get_gp_pmc_amd (struct kvm_pmu*,int ,int ) ;
 struct kvm_pmu* vcpu_to_pmu (struct kvm_vcpu*) ;

__attribute__((used)) static bool amd_is_valid_msr(struct kvm_vcpu *vcpu, u32 msr)
{
 struct kvm_pmu *pmu = vcpu_to_pmu(vcpu);
 int ret = 0;

 ret = get_gp_pmc_amd(pmu, msr, PMU_TYPE_COUNTER) ||
  get_gp_pmc_amd(pmu, msr, PMU_TYPE_EVNTSEL);

 return ret;
}
