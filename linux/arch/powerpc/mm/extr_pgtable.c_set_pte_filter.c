
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int flags; } ;
typedef int pte_t ;


 int MMU_FTR_HPTE_TABLE ;
 int PG_arch_1 ;
 int flush_dcache_icache_page (struct page*) ;
 scalar_t__ is_exec_fault () ;
 struct page* maybe_pte_to_page (int ) ;
 scalar_t__ mmu_has_feature (int ) ;
 int pte_exec (int ) ;
 int pte_exprotect (int ) ;
 int pte_looks_normal (int ) ;
 int set_bit (int ,int *) ;
 int set_pte_filter_hash (int ) ;
 scalar_t__ test_bit (int ,int *) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static pte_t set_pte_filter(pte_t pte)
{
 struct page *pg;

 if (mmu_has_feature(MMU_FTR_HPTE_TABLE))
  return set_pte_filter_hash(pte);


 if (!pte_exec(pte) || !pte_looks_normal(pte))
  return pte;


 pg = maybe_pte_to_page(pte);
 if (unlikely(!pg))
  return pte;


 if (test_bit(PG_arch_1, &pg->flags))
  return pte;


 if (is_exec_fault()) {
  flush_dcache_icache_page(pg);
  set_bit(PG_arch_1, &pg->flags);
  return pte;
 }


 return pte_exprotect(pte);
}
