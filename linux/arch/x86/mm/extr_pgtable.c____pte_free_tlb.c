
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;
struct mmu_gather {int dummy; } ;


 int page_to_pfn (struct page*) ;
 int paravirt_release_pte (int ) ;
 int paravirt_tlb_remove_table (struct mmu_gather*,struct page*) ;
 int pgtable_pte_page_dtor (struct page*) ;

void ___pte_free_tlb(struct mmu_gather *tlb, struct page *pte)
{
 pgtable_pte_page_dtor(pte);
 paravirt_release_pte(page_to_pfn(pte));
 paravirt_tlb_remove_table(tlb, pte);
}
