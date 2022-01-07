
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pte_t ;
typedef int phys_addr_t ;
typedef int pgprot_t ;


 int PHYS_PFN (int ) ;
 int PTRS_PER_PTE ;
 int __pa (scalar_t__) ;
 int __set_pte_at (int *,unsigned long,int *,int ,int ) ;
 int init_mm ;
 scalar_t__ kasan_early_shadow_page ;
 int pfn_pte (int ,int ) ;

__attribute__((used)) static void kasan_populate_pte(pte_t *ptep, pgprot_t prot)
{
 unsigned long va = (unsigned long)kasan_early_shadow_page;
 phys_addr_t pa = __pa(kasan_early_shadow_page);
 int i;

 for (i = 0; i < PTRS_PER_PTE; i++, ptep++)
  __set_pte_at(&init_mm, va, ptep, pfn_pte(PHYS_PFN(pa), prot), 0);
}
