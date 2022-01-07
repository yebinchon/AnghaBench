
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;


 int shadow_acc_track_mask ;
 int spte_ad_enabled (int) ;

__attribute__((used)) static inline bool is_access_track_spte(u64 spte)
{
 return !spte_ad_enabled(spte) && (spte & shadow_acc_track_mask) == 0;
}
