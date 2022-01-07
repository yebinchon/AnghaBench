
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mm_struct {int dummy; } ;
typedef int pud_t ;
typedef int pte_t ;
typedef int pmd_t ;
typedef int pgd_t ;


 scalar_t__ is_hugetlb_pmd (int ) ;
 scalar_t__ is_hugetlb_pud (int ) ;
 scalar_t__ pgd_none (int ) ;
 int * pgd_offset (struct mm_struct*,unsigned long) ;
 scalar_t__ pmd_none (int ) ;
 int * pmd_offset (int *,unsigned long) ;
 int * pte_offset_map (int *,unsigned long) ;
 scalar_t__ pud_none (int ) ;
 int * pud_offset (int *,unsigned long) ;

pte_t *huge_pte_offset(struct mm_struct *mm,
         unsigned long addr, unsigned long sz)
{
 pgd_t *pgd;
 pud_t *pud;
 pmd_t *pmd;

 pgd = pgd_offset(mm, addr);
 if (pgd_none(*pgd))
  return ((void*)0);
 pud = pud_offset(pgd, addr);
 if (pud_none(*pud))
  return ((void*)0);
 if (is_hugetlb_pud(*pud))
  return (pte_t *)pud;
 pmd = pmd_offset(pud, addr);
 if (pmd_none(*pmd))
  return ((void*)0);
 if (is_hugetlb_pmd(*pmd))
  return (pte_t *)pmd;
 return pte_offset_map(pmd, addr);
}
