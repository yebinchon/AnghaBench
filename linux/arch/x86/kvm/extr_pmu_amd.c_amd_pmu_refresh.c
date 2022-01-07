
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct kvm_vcpu {int dummy; } ;
struct kvm_pmu {int* counter_bitmask; int reserved_bits; int version; scalar_t__ global_status; scalar_t__ nr_arch_fixed_counters; int nr_arch_gp_counters; } ;


 int AMD64_NUM_COUNTERS ;
 int AMD64_NUM_COUNTERS_CORE ;
 size_t KVM_PMC_FIXED ;
 size_t KVM_PMC_GP ;
 int X86_FEATURE_PERFCTR_CORE ;
 scalar_t__ guest_cpuid_has (struct kvm_vcpu*,int ) ;
 struct kvm_pmu* vcpu_to_pmu (struct kvm_vcpu*) ;

__attribute__((used)) static void amd_pmu_refresh(struct kvm_vcpu *vcpu)
{
 struct kvm_pmu *pmu = vcpu_to_pmu(vcpu);

 if (guest_cpuid_has(vcpu, X86_FEATURE_PERFCTR_CORE))
  pmu->nr_arch_gp_counters = AMD64_NUM_COUNTERS_CORE;
 else
  pmu->nr_arch_gp_counters = AMD64_NUM_COUNTERS;

 pmu->counter_bitmask[KVM_PMC_GP] = ((u64)1 << 48) - 1;
 pmu->reserved_bits = 0xffffffff00200000ull;
 pmu->version = 1;

 pmu->counter_bitmask[KVM_PMC_FIXED] = 0;
 pmu->nr_arch_fixed_counters = 0;
 pmu->global_status = 0;
}
