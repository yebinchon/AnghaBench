
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rsvd_bits_validate {int ** rsvd_bits_mask; } ;
struct kvm_vcpu {int dummy; } ;
struct kvm_mmu {int shadow_root_level; struct rsvd_bits_validate shadow_zero_check; } ;


 int X86_FEATURE_GBPAGES ;
 int __reset_rsvds_bits_mask (struct kvm_vcpu*,struct rsvd_bits_validate*,int ,int,int,int ,int,int) ;
 int __reset_rsvds_bits_mask_ept (struct rsvd_bits_validate*,int ,int) ;
 int boot_cpu_has (int ) ;
 scalar_t__ boot_cpu_is_amd () ;
 int shadow_me_mask ;
 int shadow_phys_bits ;

__attribute__((used)) static void
reset_tdp_shadow_zero_bits_mask(struct kvm_vcpu *vcpu,
    struct kvm_mmu *context)
{
 struct rsvd_bits_validate *shadow_zero_check;
 int i;

 shadow_zero_check = &context->shadow_zero_check;

 if (boot_cpu_is_amd())
  __reset_rsvds_bits_mask(vcpu, shadow_zero_check,
     shadow_phys_bits,
     context->shadow_root_level, 0,
     boot_cpu_has(X86_FEATURE_GBPAGES),
     1, 1);
 else
  __reset_rsvds_bits_mask_ept(shadow_zero_check,
         shadow_phys_bits,
         0);

 if (!shadow_me_mask)
  return;

 for (i = context->shadow_root_level; --i >= 0;) {
  shadow_zero_check->rsvd_bits_mask[0][i] &= ~shadow_me_mask;
  shadow_zero_check->rsvd_bits_mask[1][i] &= ~shadow_me_mask;
 }
}
