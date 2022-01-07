
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;


 scalar_t__ is_accessed_spte (int ) ;
 scalar_t__ is_dirty_spte (int ) ;
 int is_shadow_present_pte (int ) ;
 int is_writable_pte (int ) ;
 int kvm_set_pfn_accessed (int ) ;
 int kvm_set_pfn_dirty (int ) ;
 int mmu_spte_update_no_track (int *,int ) ;
 scalar_t__ spte_can_locklessly_be_made_writable (int ) ;
 int spte_to_pfn (int ) ;

__attribute__((used)) static bool mmu_spte_update(u64 *sptep, u64 new_spte)
{
 bool flush = 0;
 u64 old_spte = mmu_spte_update_no_track(sptep, new_spte);

 if (!is_shadow_present_pte(old_spte))
  return 0;






 if (spte_can_locklessly_be_made_writable(old_spte) &&
       !is_writable_pte(new_spte))
  flush = 1;






 if (is_accessed_spte(old_spte) && !is_accessed_spte(new_spte)) {
  flush = 1;
  kvm_set_pfn_accessed(spte_to_pfn(old_spte));
 }

 if (is_dirty_spte(old_spte) && !is_dirty_spte(new_spte)) {
  flush = 1;
  kvm_set_pfn_dirty(spte_to_pfn(old_spte));
 }

 return flush;
}
