
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mm_struct {int dummy; } ;
typedef int pud_t ;
typedef int pte_t ;
typedef int pmd_t ;
typedef int pgd_t ;


 unsigned long PMD_SIZE ;
 unsigned long PUD_SIZE ;
 int * pgd_offset (struct mm_struct*,unsigned long) ;
 int * pmd_alloc (struct mm_struct*,int *,unsigned long) ;
 int * pte_alloc_map (struct mm_struct*,int *,unsigned long) ;
 int * pud_alloc (struct mm_struct*,int *,unsigned long) ;

pte_t *huge_pte_alloc(struct mm_struct *mm,
   unsigned long addr, unsigned long sz)
{
 pgd_t *pgd;
 pud_t *pud;
 pmd_t *pmd;

 pgd = pgd_offset(mm, addr);
 pud = pud_alloc(mm, pgd, addr);
 if (!pud)
  return ((void*)0);
 if (sz >= PUD_SIZE)
  return (pte_t *)pud;
 pmd = pmd_alloc(mm, pud, addr);
 if (!pmd)
  return ((void*)0);
 if (sz >= PMD_SIZE)
  return (pte_t *)pmd;
 return pte_alloc_map(mm, pmd, addr);
}
