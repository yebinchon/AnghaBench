
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;


 scalar_t__ is_access_track_spte (int) ;
 int is_shadow_present_pte (int) ;
 scalar_t__ is_writable_pte (int) ;
 int shadow_accessed_mask ;
 int shadow_dirty_mask ;
 scalar_t__ spte_ad_enabled (int) ;
 scalar_t__ spte_can_locklessly_be_made_writable (int) ;

__attribute__((used)) static bool spte_has_volatile_bits(u64 spte)
{
 if (!is_shadow_present_pte(spte))
  return 0;







 if (spte_can_locklessly_be_made_writable(spte) ||
     is_access_track_spte(spte))
  return 1;

 if (spte_ad_enabled(spte)) {
  if ((spte & shadow_accessed_mask) == 0 ||
          (is_writable_pte(spte) && (spte & shadow_dirty_mask) == 0))
   return 1;
 }

 return 0;
}
