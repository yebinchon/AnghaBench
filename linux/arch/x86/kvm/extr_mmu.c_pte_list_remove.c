
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct kvm_rmap_head {int dummy; } ;


 int __pte_list_remove (int *,struct kvm_rmap_head*) ;
 int mmu_spte_clear_track_bits (int *) ;

__attribute__((used)) static void pte_list_remove(struct kvm_rmap_head *rmap_head, u64 *sptep)
{
 mmu_spte_clear_track_bits(sptep);
 __pte_list_remove(sptep, rmap_head);
}
