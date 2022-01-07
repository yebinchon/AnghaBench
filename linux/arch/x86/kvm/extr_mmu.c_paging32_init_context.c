
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kvm_vcpu {int dummy; } ;
struct kvm_mmu {int nx; int direct_map; int shadow_root_level; int update_pte; int invlpg; int sync_page; int gva_to_gpa; int page_fault; int root_level; } ;


 int PT32E_ROOT_LEVEL ;
 int PT32_ROOT_LEVEL ;
 int paging32_gva_to_gpa ;
 int paging32_invlpg ;
 int paging32_page_fault ;
 int paging32_sync_page ;
 int paging32_update_pte ;
 int reset_rsvds_bits_mask (struct kvm_vcpu*,struct kvm_mmu*) ;
 int update_last_nonleaf_level (struct kvm_vcpu*,struct kvm_mmu*) ;
 int update_permission_bitmask (struct kvm_vcpu*,struct kvm_mmu*,int) ;
 int update_pkru_bitmask (struct kvm_vcpu*,struct kvm_mmu*,int) ;

__attribute__((used)) static void paging32_init_context(struct kvm_vcpu *vcpu,
      struct kvm_mmu *context)
{
 context->nx = 0;
 context->root_level = PT32_ROOT_LEVEL;

 reset_rsvds_bits_mask(vcpu, context);
 update_permission_bitmask(vcpu, context, 0);
 update_pkru_bitmask(vcpu, context, 0);
 update_last_nonleaf_level(vcpu, context);

 context->page_fault = paging32_page_fault;
 context->gva_to_gpa = paging32_gva_to_gpa;
 context->sync_page = paging32_sync_page;
 context->invlpg = paging32_invlpg;
 context->update_pte = paging32_update_pte;
 context->shadow_root_level = PT32E_ROOT_LEVEL;
 context->direct_map = 0;
}
