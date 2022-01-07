
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int word; } ;
union kvm_mmu_role {scalar_t__ as_u64; TYPE_2__ base; } ;
struct TYPE_5__ {struct kvm_mmu* mmu; } ;
struct kvm_vcpu {TYPE_1__ arch; } ;
struct TYPE_7__ {scalar_t__ as_u64; } ;
struct kvm_mmu {TYPE_3__ mmu_role; } ;
struct TYPE_8__ {int word; } ;


 scalar_t__ is_long_mode (struct kvm_vcpu*) ;
 scalar_t__ is_pae (struct kvm_vcpu*) ;
 int is_paging (struct kvm_vcpu*) ;
 union kvm_mmu_role kvm_calc_shadow_mmu_root_page_role (struct kvm_vcpu*,int) ;
 TYPE_4__ mmu_base_role_mask ;
 int nonpaging_init_context (struct kvm_vcpu*,struct kvm_mmu*) ;
 int paging32E_init_context (struct kvm_vcpu*,struct kvm_mmu*) ;
 int paging32_init_context (struct kvm_vcpu*,struct kvm_mmu*) ;
 int paging64_init_context (struct kvm_vcpu*,struct kvm_mmu*) ;
 int reset_shadow_zero_bits_mask (struct kvm_vcpu*,struct kvm_mmu*) ;

void kvm_init_shadow_mmu(struct kvm_vcpu *vcpu)
{
 struct kvm_mmu *context = vcpu->arch.mmu;
 union kvm_mmu_role new_role =
  kvm_calc_shadow_mmu_root_page_role(vcpu, 0);

 new_role.base.word &= mmu_base_role_mask.word;
 if (new_role.as_u64 == context->mmu_role.as_u64)
  return;

 if (!is_paging(vcpu))
  nonpaging_init_context(vcpu, context);
 else if (is_long_mode(vcpu))
  paging64_init_context(vcpu, context);
 else if (is_pae(vcpu))
  paging32E_init_context(vcpu, context);
 else
  paging32_init_context(vcpu, context);

 context->mmu_role.as_u64 = new_role.as_u64;
 reset_shadow_zero_bits_mask(vcpu, context);
}
