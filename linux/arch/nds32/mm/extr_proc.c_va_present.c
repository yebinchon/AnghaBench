
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mm_struct {int dummy; } ;
typedef int pud_t ;
typedef int pte_t ;
typedef int pmd_t ;
typedef int pgd_t ;


 int pgd_none (int ) ;
 int * pgd_offset (struct mm_struct*,unsigned long) ;
 int pmd_none (int ) ;
 int * pmd_offset (int *,unsigned long) ;
 int * pte_offset_map (int *,unsigned long) ;
 scalar_t__ pte_present (int ) ;
 int pud_none (int ) ;
 int * pud_offset (int *,unsigned long) ;

pte_t va_present(struct mm_struct * mm, unsigned long addr)
{
 pgd_t *pgd;
 pud_t *pud;
 pmd_t *pmd;
 pte_t *ptep, pte;

 pgd = pgd_offset(mm, addr);
 if (!pgd_none(*pgd)) {
  pud = pud_offset(pgd, addr);
  if (!pud_none(*pud)) {
   pmd = pmd_offset(pud, addr);
   if (!pmd_none(*pmd)) {
    ptep = pte_offset_map(pmd, addr);
    pte = *ptep;
    if (pte_present(pte))
     return pte;
   }
  }
 }
 return 0;

}
