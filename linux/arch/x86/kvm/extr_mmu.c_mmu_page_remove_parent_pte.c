
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct kvm_mmu_page {int parent_ptes; } ;


 int __pte_list_remove (int *,int *) ;

__attribute__((used)) static void mmu_page_remove_parent_pte(struct kvm_mmu_page *sp,
           u64 *parent_pte)
{
 __pte_list_remove(parent_pte, &sp->parent_ptes);
}
