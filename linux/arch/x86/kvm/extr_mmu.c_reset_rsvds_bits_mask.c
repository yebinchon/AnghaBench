
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kvm_vcpu {int dummy; } ;
struct kvm_mmu {int nx; int root_level; int guest_rsvd_check; } ;


 int X86_FEATURE_GBPAGES ;
 int __reset_rsvds_bits_mask (struct kvm_vcpu*,int *,int ,int ,int ,int ,int ,int ) ;
 int cpuid_maxphyaddr (struct kvm_vcpu*) ;
 int guest_cpuid_has (struct kvm_vcpu*,int ) ;
 int guest_cpuid_is_amd (struct kvm_vcpu*) ;
 int is_pse (struct kvm_vcpu*) ;

__attribute__((used)) static void reset_rsvds_bits_mask(struct kvm_vcpu *vcpu,
      struct kvm_mmu *context)
{
 __reset_rsvds_bits_mask(vcpu, &context->guest_rsvd_check,
    cpuid_maxphyaddr(vcpu), context->root_level,
    context->nx,
    guest_cpuid_has(vcpu, X86_FEATURE_GBPAGES),
    is_pse(vcpu), guest_cpuid_is_amd(vcpu));
}
