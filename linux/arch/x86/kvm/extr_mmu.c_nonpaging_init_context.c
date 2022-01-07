
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kvm_vcpu {int dummy; } ;
struct kvm_mmu {int direct_map; int nx; int shadow_root_level; scalar_t__ root_level; int update_pte; int invlpg; int sync_page; int gva_to_gpa; int page_fault; } ;


 int PT32E_ROOT_LEVEL ;
 int nonpaging_gva_to_gpa ;
 int nonpaging_invlpg ;
 int nonpaging_page_fault ;
 int nonpaging_sync_page ;
 int nonpaging_update_pte ;

__attribute__((used)) static void nonpaging_init_context(struct kvm_vcpu *vcpu,
       struct kvm_mmu *context)
{
 context->page_fault = nonpaging_page_fault;
 context->gva_to_gpa = nonpaging_gva_to_gpa;
 context->sync_page = nonpaging_sync_page;
 context->invlpg = nonpaging_invlpg;
 context->update_pte = nonpaging_update_pte;
 context->root_level = 0;
 context->shadow_root_level = PT32E_ROOT_LEVEL;
 context->direct_map = 1;
 context->nx = 0;
}
