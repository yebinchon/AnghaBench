
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kvm_vcpu {int dummy; } ;
struct kvm_mmu {int guest_rsvd_check; } ;


 int __reset_rsvds_bits_mask_ept (int *,int ,int) ;
 int cpuid_maxphyaddr (struct kvm_vcpu*) ;

__attribute__((used)) static void reset_rsvds_bits_mask_ept(struct kvm_vcpu *vcpu,
  struct kvm_mmu *context, bool execonly)
{
 __reset_rsvds_bits_mask_ept(&context->guest_rsvd_check,
        cpuid_maxphyaddr(vcpu), execonly);
}
