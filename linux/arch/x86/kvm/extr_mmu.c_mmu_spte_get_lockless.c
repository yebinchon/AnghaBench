
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;


 int __get_spte_lockless (int *) ;

__attribute__((used)) static u64 mmu_spte_get_lockless(u64 *sptep)
{
 return __get_spte_lockless(sptep);
}
