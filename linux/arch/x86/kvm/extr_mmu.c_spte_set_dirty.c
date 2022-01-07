
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;


 int mmu_spte_update (int *,int ) ;
 int rmap_printk (char*,int *,int ) ;
 int shadow_dirty_mask ;

__attribute__((used)) static bool spte_set_dirty(u64 *sptep)
{
 u64 spte = *sptep;

 rmap_printk("rmap_set_dirty: spte %p %llx\n", sptep, *sptep);






 spte |= shadow_dirty_mask;

 return mmu_spte_update(sptep, spte);
}
