
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kvm_vcpu {int dummy; } ;
struct kvm_pmu {unsigned int nr_arch_gp_counters; } ;


 struct kvm_pmu* vcpu_to_pmu (struct kvm_vcpu*) ;

__attribute__((used)) static int amd_is_valid_msr_idx(struct kvm_vcpu *vcpu, unsigned idx)
{
 struct kvm_pmu *pmu = vcpu_to_pmu(vcpu);

 idx &= ~(3u << 30);

 return (idx >= pmu->nr_arch_gp_counters);
}
