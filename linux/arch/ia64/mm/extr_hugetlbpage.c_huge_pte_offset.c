
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mm_struct {int dummy; } ;
typedef int pud_t ;
typedef int pte_t ;
typedef int pmd_t ;
typedef int pgd_t ;


 unsigned long htlbpage_to_page (unsigned long) ;
 int * pgd_offset (struct mm_struct*,unsigned long) ;
 scalar_t__ pgd_present (int ) ;
 int * pmd_offset (int *,unsigned long) ;
 scalar_t__ pmd_present (int ) ;
 int * pte_offset_map (int *,unsigned long) ;
 int * pud_offset (int *,unsigned long) ;
 scalar_t__ pud_present (int ) ;

pte_t *
huge_pte_offset (struct mm_struct *mm, unsigned long addr, unsigned long sz)
{
 unsigned long taddr = htlbpage_to_page(addr);
 pgd_t *pgd;
 pud_t *pud;
 pmd_t *pmd;
 pte_t *pte = ((void*)0);

 pgd = pgd_offset(mm, taddr);
 if (pgd_present(*pgd)) {
  pud = pud_offset(pgd, taddr);
  if (pud_present(*pud)) {
   pmd = pmd_offset(pud, taddr);
   if (pmd_present(*pmd))
    pte = pte_offset_map(pmd, taddr);
  }
 }

 return pte;
}
