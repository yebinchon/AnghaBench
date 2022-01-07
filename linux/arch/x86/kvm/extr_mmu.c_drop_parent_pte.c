
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct kvm_mmu_page {int dummy; } ;


 int mmu_page_remove_parent_pte (struct kvm_mmu_page*,int *) ;
 int mmu_spte_clear_no_track (int *) ;

__attribute__((used)) static void drop_parent_pte(struct kvm_mmu_page *sp,
       u64 *parent_pte)
{
 mmu_page_remove_parent_pte(sp, parent_pte);
 mmu_spte_clear_no_track(parent_pte);
}
