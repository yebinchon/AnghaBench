
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;


 int clear_bit (scalar_t__,unsigned long*) ;
 scalar_t__ ffs (int ) ;
 int is_accessed_spte (int ) ;
 scalar_t__ is_writable_pte (int ) ;
 int kvm_set_pfn_dirty (int ) ;
 int mark_spte_for_access_track (int ) ;
 int mmu_spte_get_lockless (int *) ;
 int mmu_spte_update_no_track (int *,int ) ;
 int shadow_accessed_mask ;
 scalar_t__ spte_ad_enabled (int ) ;
 int spte_to_pfn (int ) ;

__attribute__((used)) static bool mmu_spte_age(u64 *sptep)
{
 u64 spte = mmu_spte_get_lockless(sptep);

 if (!is_accessed_spte(spte))
  return 0;

 if (spte_ad_enabled(spte)) {
  clear_bit((ffs(shadow_accessed_mask) - 1),
     (unsigned long *)sptep);
 } else {




  if (is_writable_pte(spte))
   kvm_set_pfn_dirty(spte_to_pfn(spte));

  spte = mark_spte_for_access_track(spte);
  mmu_spte_update_no_track(sptep, spte);
 }

 return 1;
}
