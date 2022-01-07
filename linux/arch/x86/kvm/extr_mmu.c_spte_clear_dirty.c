
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;


 int MMU_WARN_ON (int) ;
 int mmu_spte_update (int *,int ) ;
 int rmap_printk (char*,int *,int ) ;
 int shadow_dirty_mask ;
 int spte_ad_enabled (int ) ;

__attribute__((used)) static bool spte_clear_dirty(u64 *sptep)
{
 u64 spte = *sptep;

 rmap_printk("rmap_clear_dirty: spte %p %llx\n", sptep, *sptep);

 MMU_WARN_ON(!spte_ad_enabled(spte));
 spte &= ~shadow_dirty_mask;
 return mmu_spte_update(sptep, spte);
}
