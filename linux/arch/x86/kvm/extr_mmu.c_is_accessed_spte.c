
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;


 int is_access_track_spte (int) ;
 int spte_shadow_accessed_mask (int) ;

__attribute__((used)) static bool is_accessed_spte(u64 spte)
{
 u64 accessed_mask = spte_shadow_accessed_mask(spte);

 return accessed_mask ? spte & accessed_mask
        : !is_access_track_spte(spte);
}
