
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;


 int MMU_WARN_ON (int ) ;
 int is_mmio_spte (int ) ;
 int shadow_dirty_mask ;
 scalar_t__ spte_ad_enabled (int ) ;

__attribute__((used)) static inline u64 spte_shadow_dirty_mask(u64 spte)
{
 MMU_WARN_ON(is_mmio_spte(spte));
 return spte_ad_enabled(spte) ? shadow_dirty_mask : 0;
}
