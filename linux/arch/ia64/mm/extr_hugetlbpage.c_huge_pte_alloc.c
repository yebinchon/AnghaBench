
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
 int * pmd_alloc (struct mm_struct*,int *,unsigned long) ;
 int * pte_alloc_map (struct mm_struct*,int *,unsigned long) ;
 int * pud_alloc (struct mm_struct*,int *,unsigned long) ;

pte_t *
huge_pte_alloc(struct mm_struct *mm, unsigned long addr, unsigned long sz)
{
 unsigned long taddr = htlbpage_to_page(addr);
 pgd_t *pgd;
 pud_t *pud;
 pmd_t *pmd;
 pte_t *pte = ((void*)0);

 pgd = pgd_offset(mm, taddr);
 pud = pud_alloc(mm, pgd, taddr);
 if (pud) {
  pmd = pmd_alloc(mm, pud, taddr);
  if (pmd)
   pte = pte_alloc_map(mm, pmd, taddr);
 }
 return pte;
}
