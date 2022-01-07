
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pud_t ;
typedef int pte_t ;
typedef int pmd_t ;
typedef int pgd_t ;


 scalar_t__ pgd_bad (int ) ;
 scalar_t__ pgd_none (int ) ;
 int * pgd_offset_k (unsigned long) ;
 scalar_t__ pmd_bad (int ) ;
 scalar_t__ pmd_none (int ) ;
 int * pmd_offset (int *,unsigned long) ;
 int * pte_offset_kernel (int *,unsigned long) ;
 int pte_present (int ) ;
 scalar_t__ pud_bad (int ) ;
 scalar_t__ pud_none (int ) ;
 int * pud_offset (int *,unsigned long) ;

__attribute__((used)) static int
mapped_kernel_page_is_present (unsigned long address)
{
 pgd_t *pgd;
 pud_t *pud;
 pmd_t *pmd;
 pte_t *ptep, pte;

 pgd = pgd_offset_k(address);
 if (pgd_none(*pgd) || pgd_bad(*pgd))
  return 0;

 pud = pud_offset(pgd, address);
 if (pud_none(*pud) || pud_bad(*pud))
  return 0;

 pmd = pmd_offset(pud, address);
 if (pmd_none(*pmd) || pmd_bad(*pmd))
  return 0;

 ptep = pte_offset_kernel(pmd, address);
 if (!ptep)
  return 0;

 pte = *ptep;
 return pte_present(pte);
}
