
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct kvm_vcpu {int dummy; } ;
struct kvm_mmu_page {scalar_t__ unsync; scalar_t__ unsync_children; int spt; } ;


 int BUILD_BUG_ON (int) ;
 int PT_WRITABLE_MASK ;
 int SPTE_AD_DISABLED_MASK ;
 int VMX_EPT_WRITABLE_MASK ;
 int __pa (int ) ;
 int mark_unsync (int*) ;
 int mmu_page_add_parent_pte (struct kvm_vcpu*,struct kvm_mmu_page*,int*) ;
 int mmu_spte_set (int*,int) ;
 int shadow_accessed_mask ;
 int shadow_me_mask ;
 int shadow_present_mask ;
 int shadow_user_mask ;
 int shadow_x_mask ;
 scalar_t__ sp_ad_disabled (struct kvm_mmu_page*) ;

__attribute__((used)) static void link_shadow_page(struct kvm_vcpu *vcpu, u64 *sptep,
        struct kvm_mmu_page *sp)
{
 u64 spte;

 BUILD_BUG_ON(VMX_EPT_WRITABLE_MASK != PT_WRITABLE_MASK);

 spte = __pa(sp->spt) | shadow_present_mask | PT_WRITABLE_MASK |
        shadow_user_mask | shadow_x_mask | shadow_me_mask;

 if (sp_ad_disabled(sp))
  spte |= SPTE_AD_DISABLED_MASK;
 else
  spte |= shadow_accessed_mask;

 mmu_spte_set(sptep, spte);

 mmu_page_add_parent_pte(vcpu, sp, sptep);

 if (sp->unsync_children || sp->unsync)
  mark_unsync(sptep);
}
