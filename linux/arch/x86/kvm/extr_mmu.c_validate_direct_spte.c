
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
struct kvm_vcpu {int kvm; } ;
struct TYPE_2__ {unsigned int access; } ;
struct kvm_mmu_page {int gfn; TYPE_1__ role; } ;


 int PT64_BASE_ADDR_MASK ;
 int drop_parent_pte (struct kvm_mmu_page*,int*) ;
 int is_large_pte (int) ;
 scalar_t__ is_shadow_present_pte (int) ;
 int kvm_flush_remote_tlbs_with_address (int ,int ,int) ;
 struct kvm_mmu_page* page_header (int) ;

__attribute__((used)) static void validate_direct_spte(struct kvm_vcpu *vcpu, u64 *sptep,
       unsigned direct_access)
{
 if (is_shadow_present_pte(*sptep) && !is_large_pte(*sptep)) {
  struct kvm_mmu_page *child;
  child = page_header(*sptep & PT64_BASE_ADDR_MASK);
  if (child->role.access == direct_access)
   return;

  drop_parent_pte(child, sptep);
  kvm_flush_remote_tlbs_with_address(vcpu->kvm, child->gfn, 1);
 }
}
