
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct kvm_vcpu {int dummy; } ;
struct kvm_mmu_page {int parent_ptes; } ;


 int pte_list_add (struct kvm_vcpu*,int *,int *) ;

__attribute__((used)) static void mmu_page_add_parent_pte(struct kvm_vcpu *vcpu,
        struct kvm_mmu_page *sp, u64 *parent_pte)
{
 if (!parent_pte)
  return;

 pte_list_add(vcpu, parent_pte, &sp->parent_ptes);
}
