
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct rsvd_bits_validate {int ** rsvd_bits_mask; } ;
struct kvm_vcpu {int dummy; } ;
struct TYPE_3__ {scalar_t__ smep_andnot_wp; } ;
struct TYPE_4__ {TYPE_1__ base; } ;
struct kvm_mmu {int shadow_root_level; struct rsvd_bits_validate shadow_zero_check; TYPE_2__ mmu_role; scalar_t__ nx; } ;


 int X86_FEATURE_GBPAGES ;
 int __reset_rsvds_bits_mask (struct kvm_vcpu*,struct rsvd_bits_validate*,int ,int,int,int ,int ,int) ;
 int guest_cpuid_has (struct kvm_vcpu*,int ) ;
 int is_pse (struct kvm_vcpu*) ;
 int shadow_me_mask ;
 int shadow_phys_bits ;

void
reset_shadow_zero_bits_mask(struct kvm_vcpu *vcpu, struct kvm_mmu *context)
{
 bool uses_nx = context->nx ||
  context->mmu_role.base.smep_andnot_wp;
 struct rsvd_bits_validate *shadow_zero_check;
 int i;





 shadow_zero_check = &context->shadow_zero_check;
 __reset_rsvds_bits_mask(vcpu, shadow_zero_check,
    shadow_phys_bits,
    context->shadow_root_level, uses_nx,
    guest_cpuid_has(vcpu, X86_FEATURE_GBPAGES),
    is_pse(vcpu), 1);

 if (!shadow_me_mask)
  return;

 for (i = context->shadow_root_level; --i >= 0;) {
  shadow_zero_check->rsvd_bits_mask[0][i] &= ~shadow_me_mask;
  shadow_zero_check->rsvd_bits_mask[1][i] &= ~shadow_me_mask;
 }

}
