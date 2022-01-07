
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;


 int __update_clear_spte_fast (int *,unsigned long long) ;

__attribute__((used)) static void mmu_spte_clear_no_track(u64 *sptep)
{
 __update_clear_spte_fast(sptep, 0ull);
}
