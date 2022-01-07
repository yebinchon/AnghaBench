
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mm_struct {int dummy; } ;
typedef int pud_t ;
typedef int pte_t ;
typedef int pmd_t ;
typedef int pgd_t ;


 int * pgd_offset (struct mm_struct*,unsigned long) ;
 int pgd_present (int ) ;
 int * pmd_offset (int *,unsigned long) ;
 int pmd_present (int ) ;
 int * pte_offset_kernel (int *,unsigned long) ;
 int * pud_offset (int *,unsigned long) ;
 int pud_present (int ) ;

pte_t *virt_to_pte(struct mm_struct *mm, unsigned long addr)
{
 pgd_t *pgd;
 pud_t *pud;
 pmd_t *pmd;

 if (mm == ((void*)0))
  return ((void*)0);

 pgd = pgd_offset(mm, addr);
 if (!pgd_present(*pgd))
  return ((void*)0);

 pud = pud_offset(pgd, addr);
 if (!pud_present(*pud))
  return ((void*)0);

 pmd = pmd_offset(pud, addr);
 if (!pmd_present(*pmd))
  return ((void*)0);

 return pte_offset_kernel(pmd, addr);
}
