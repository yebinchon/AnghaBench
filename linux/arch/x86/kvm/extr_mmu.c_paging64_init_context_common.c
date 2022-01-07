
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kvm_vcpu {int dummy; } ;
struct kvm_mmu {int root_level; int shadow_root_level; int direct_map; int update_pte; int invlpg; int sync_page; int gva_to_gpa; int page_fault; int nx; } ;


 int MMU_WARN_ON (int) ;
 int is_nx (struct kvm_vcpu*) ;
 int is_pae (struct kvm_vcpu*) ;
 int paging64_gva_to_gpa ;
 int paging64_invlpg ;
 int paging64_page_fault ;
 int paging64_sync_page ;
 int paging64_update_pte ;
 int reset_rsvds_bits_mask (struct kvm_vcpu*,struct kvm_mmu*) ;
 int update_last_nonleaf_level (struct kvm_vcpu*,struct kvm_mmu*) ;
 int update_permission_bitmask (struct kvm_vcpu*,struct kvm_mmu*,int) ;
 int update_pkru_bitmask (struct kvm_vcpu*,struct kvm_mmu*,int) ;

__attribute__((used)) static void paging64_init_context_common(struct kvm_vcpu *vcpu,
      struct kvm_mmu *context,
      int level)
{
 context->nx = is_nx(vcpu);
 context->root_level = level;

 reset_rsvds_bits_mask(vcpu, context);
 update_permission_bitmask(vcpu, context, 0);
 update_pkru_bitmask(vcpu, context, 0);
 update_last_nonleaf_level(vcpu, context);

 MMU_WARN_ON(!is_pae(vcpu));
 context->page_fault = paging64_page_fault;
 context->gva_to_gpa = paging64_gva_to_gpa;
 context->sync_page = paging64_sync_page;
 context->invlpg = paging64_invlpg;
 context->update_pte = paging64_update_pte;
 context->shadow_root_level = level;
 context->direct_map = 0;
}
