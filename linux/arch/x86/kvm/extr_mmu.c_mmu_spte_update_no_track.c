
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;


 int WARN_ON (int) ;
 int __update_clear_spte_fast (int *,int ) ;
 int __update_clear_spte_slow (int *,int ) ;
 int is_shadow_present_pte (int ) ;
 int mmu_spte_set (int *,int ) ;
 int spte_has_volatile_bits (int ) ;
 scalar_t__ spte_to_pfn (int ) ;

__attribute__((used)) static u64 mmu_spte_update_no_track(u64 *sptep, u64 new_spte)
{
 u64 old_spte = *sptep;

 WARN_ON(!is_shadow_present_pte(new_spte));

 if (!is_shadow_present_pte(old_spte)) {
  mmu_spte_set(sptep, new_spte);
  return old_spte;
 }

 if (!spte_has_volatile_bits(old_spte))
  __update_clear_spte_fast(sptep, new_spte);
 else
  old_spte = __update_clear_spte_slow(sptep, new_spte);

 WARN_ON(spte_to_pfn(old_spte) != spte_to_pfn(new_spte));

 return old_spte;
}
