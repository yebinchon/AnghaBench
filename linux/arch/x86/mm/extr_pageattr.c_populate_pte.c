
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cpa_data {int pfn; } ;
typedef int pte_t ;
typedef int pmd_t ;
typedef int pgprot_t ;


 scalar_t__ PAGE_SIZE ;
 int pfn_pte (int ,int ) ;
 int pgprot_clear_protnone_bits (int ) ;
 int * pte_offset_kernel (int *,unsigned long) ;
 int set_pte (int *,int ) ;

__attribute__((used)) static void populate_pte(struct cpa_data *cpa,
    unsigned long start, unsigned long end,
    unsigned num_pages, pmd_t *pmd, pgprot_t pgprot)
{
 pte_t *pte;

 pte = pte_offset_kernel(pmd, start);

 pgprot = pgprot_clear_protnone_bits(pgprot);

 while (num_pages-- && start < end) {
  set_pte(pte, pfn_pte(cpa->pfn, pgprot));

  start += PAGE_SIZE;
  cpa->pfn++;
  pte++;
 }
}
