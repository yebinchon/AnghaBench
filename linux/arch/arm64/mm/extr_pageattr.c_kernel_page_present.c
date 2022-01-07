
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;
typedef int pud_t ;
typedef int pte_t ;
typedef int pmd_t ;
typedef int pgd_t ;


 int READ_ONCE (int ) ;
 int debug_pagealloc_enabled () ;
 scalar_t__ page_address (struct page*) ;
 scalar_t__ pgd_none (int ) ;
 int * pgd_offset_k (unsigned long) ;
 scalar_t__ pmd_none (int ) ;
 int * pmd_offset (int *,unsigned long) ;
 scalar_t__ pmd_sect (int ) ;
 int * pte_offset_kernel (int *,unsigned long) ;
 int pte_valid (int ) ;
 scalar_t__ pud_none (int ) ;
 int * pud_offset (int *,unsigned long) ;
 scalar_t__ pud_sect (int ) ;
 int rodata_full ;

bool kernel_page_present(struct page *page)
{
 pgd_t *pgdp;
 pud_t *pudp, pud;
 pmd_t *pmdp, pmd;
 pte_t *ptep;
 unsigned long addr = (unsigned long)page_address(page);

 if (!debug_pagealloc_enabled() && !rodata_full)
  return 1;

 pgdp = pgd_offset_k(addr);
 if (pgd_none(READ_ONCE(*pgdp)))
  return 0;

 pudp = pud_offset(pgdp, addr);
 pud = READ_ONCE(*pudp);
 if (pud_none(pud))
  return 0;
 if (pud_sect(pud))
  return 1;

 pmdp = pmd_offset(pudp, addr);
 pmd = READ_ONCE(*pmdp);
 if (pmd_none(pmd))
  return 0;
 if (pmd_sect(pmd))
  return 1;

 ptep = pte_offset_kernel(pmdp, addr);
 return pte_valid(READ_ONCE(*ptep));
}
