
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct kvm_mmu_page {int clear_spte_count; } ;


 int __pa (int *) ;
 scalar_t__ is_shadow_present_pte (int ) ;
 struct kvm_mmu_page* page_header (int ) ;
 int smp_wmb () ;

__attribute__((used)) static void count_spte_clear(u64 *sptep, u64 spte)
{
 struct kvm_mmu_page *sp = page_header(__pa(sptep));

 if (is_shadow_present_pte(spte))
  return;


 smp_wmb();
 sp->clear_spte_count++;
}
