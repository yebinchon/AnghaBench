
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kvm_vcpu {int dummy; } ;
struct kvm_mmu {int shadow_zero_check; } ;


 int __reset_rsvds_bits_mask_ept (int *,int ,int) ;
 int shadow_phys_bits ;

__attribute__((used)) static void
reset_ept_shadow_zero_bits_mask(struct kvm_vcpu *vcpu,
    struct kvm_mmu *context, bool execonly)
{
 __reset_rsvds_bits_mask_ept(&context->shadow_zero_check,
        shadow_phys_bits, execonly);
}
