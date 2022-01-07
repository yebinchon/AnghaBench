
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;


 int WARN_ON (int ) ;
 int __set_spte (int *,int ) ;
 int is_shadow_present_pte (int ) ;

__attribute__((used)) static void mmu_spte_set(u64 *sptep, u64 new_spte)
{
 WARN_ON(is_shadow_present_pte(*sptep));
 __set_spte(sptep, new_spte);
}
