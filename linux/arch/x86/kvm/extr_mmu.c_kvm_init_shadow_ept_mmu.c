
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_8__ {int word; } ;
union kvm_mmu_role {scalar_t__ as_u64; TYPE_4__ base; } ;
struct TYPE_5__ {struct kvm_mmu* mmu; } ;
struct kvm_vcpu {TYPE_1__ arch; } ;
struct TYPE_6__ {scalar_t__ as_u64; } ;
struct kvm_mmu {int nx; int ept_ad; int direct_map; TYPE_2__ mmu_role; void* root_level; int update_pte; int invlpg; int sync_page; int gva_to_gpa; int page_fault; void* shadow_root_level; } ;
typedef int gpa_t ;
struct TYPE_7__ {int word; } ;


 void* PT64_ROOT_4LEVEL ;
 int __kvm_mmu_new_cr3 (struct kvm_vcpu*,int ,TYPE_4__,int) ;
 int ept_gva_to_gpa ;
 int ept_invlpg ;
 int ept_page_fault ;
 int ept_sync_page ;
 int ept_update_pte ;
 union kvm_mmu_role kvm_calc_shadow_ept_root_page_role (struct kvm_vcpu*,int,int) ;
 TYPE_3__ mmu_base_role_mask ;
 int reset_ept_shadow_zero_bits_mask (struct kvm_vcpu*,struct kvm_mmu*,int) ;
 int reset_rsvds_bits_mask_ept (struct kvm_vcpu*,struct kvm_mmu*,int) ;
 int update_last_nonleaf_level (struct kvm_vcpu*,struct kvm_mmu*) ;
 int update_permission_bitmask (struct kvm_vcpu*,struct kvm_mmu*,int) ;
 int update_pkru_bitmask (struct kvm_vcpu*,struct kvm_mmu*,int) ;

void kvm_init_shadow_ept_mmu(struct kvm_vcpu *vcpu, bool execonly,
        bool accessed_dirty, gpa_t new_eptp)
{
 struct kvm_mmu *context = vcpu->arch.mmu;
 union kvm_mmu_role new_role =
  kvm_calc_shadow_ept_root_page_role(vcpu, accessed_dirty,
         execonly);

 __kvm_mmu_new_cr3(vcpu, new_eptp, new_role.base, 0);

 new_role.base.word &= mmu_base_role_mask.word;
 if (new_role.as_u64 == context->mmu_role.as_u64)
  return;

 context->shadow_root_level = PT64_ROOT_4LEVEL;

 context->nx = 1;
 context->ept_ad = accessed_dirty;
 context->page_fault = ept_page_fault;
 context->gva_to_gpa = ept_gva_to_gpa;
 context->sync_page = ept_sync_page;
 context->invlpg = ept_invlpg;
 context->update_pte = ept_update_pte;
 context->root_level = PT64_ROOT_4LEVEL;
 context->direct_map = 0;
 context->mmu_role.as_u64 = new_role.as_u64;

 update_permission_bitmask(vcpu, context, 1);
 update_pkru_bitmask(vcpu, context, 1);
 update_last_nonleaf_level(vcpu, context);
 reset_rsvds_bits_mask_ept(vcpu, context, execonly);
 reset_ept_shadow_zero_bits_mask(vcpu, context, execonly);
}
