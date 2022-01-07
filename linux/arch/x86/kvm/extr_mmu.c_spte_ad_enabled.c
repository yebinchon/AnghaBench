
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;


 int MMU_WARN_ON (int ) ;
 int SPTE_AD_DISABLED_MASK ;
 int SPTE_SPECIAL_MASK ;
 int is_mmio_spte (int) ;

__attribute__((used)) static inline bool spte_ad_enabled(u64 spte)
{
 MMU_WARN_ON(is_mmio_spte(spte));
 return (spte & SPTE_SPECIAL_MASK) != SPTE_AD_DISABLED_MASK;
}
