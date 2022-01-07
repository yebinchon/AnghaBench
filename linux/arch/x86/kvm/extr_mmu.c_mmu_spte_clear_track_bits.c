
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int kvm_pfn_t ;


 int WARN_ON (int) ;
 int __update_clear_spte_fast (int *,unsigned long long) ;
 int __update_clear_spte_slow (int *,unsigned long long) ;
 scalar_t__ is_accessed_spte (int ) ;
 scalar_t__ is_dirty_spte (int ) ;
 int is_shadow_present_pte (int ) ;
 int kvm_is_reserved_pfn (int ) ;
 int kvm_set_pfn_accessed (int ) ;
 int kvm_set_pfn_dirty (int ) ;
 int page_count (int ) ;
 int pfn_to_page (int ) ;
 int spte_has_volatile_bits (int ) ;
 int spte_to_pfn (int ) ;

__attribute__((used)) static int mmu_spte_clear_track_bits(u64 *sptep)
{
 kvm_pfn_t pfn;
 u64 old_spte = *sptep;

 if (!spte_has_volatile_bits(old_spte))
  __update_clear_spte_fast(sptep, 0ull);
 else
  old_spte = __update_clear_spte_slow(sptep, 0ull);

 if (!is_shadow_present_pte(old_spte))
  return 0;

 pfn = spte_to_pfn(old_spte);






 WARN_ON(!kvm_is_reserved_pfn(pfn) && !page_count(pfn_to_page(pfn)));

 if (is_accessed_spte(old_spte))
  kvm_set_pfn_accessed(pfn);

 if (is_dirty_spte(old_spte))
  kvm_set_pfn_dirty(pfn);

 return 1;
}
