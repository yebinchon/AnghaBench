
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mm_struct {int dummy; } ;
typedef int pud_t ;
typedef int pte_t ;
typedef int pmd_t ;
typedef int pgd_t ;


 unsigned long CONT_PMD_MASK ;
 unsigned long CONT_PMD_SIZE ;
 unsigned long CONT_PTE_MASK ;
 unsigned long CONT_PTE_SIZE ;
 unsigned long PMD_SIZE ;
 unsigned long PUD_SIZE ;
 int READ_ONCE (int ) ;
 int * pgd_offset (struct mm_struct*,unsigned long) ;
 int pgd_present (int ) ;
 scalar_t__ pmd_huge (int ) ;
 scalar_t__ pmd_none (int ) ;
 int * pmd_offset (int *,unsigned long) ;
 int pmd_present (int ) ;
 int * pte_offset_kernel (int *,unsigned long) ;
 scalar_t__ pud_huge (int ) ;
 scalar_t__ pud_none (int ) ;
 int * pud_offset (int *,unsigned long) ;
 int pud_present (int ) ;

pte_t *huge_pte_offset(struct mm_struct *mm,
         unsigned long addr, unsigned long sz)
{
 pgd_t *pgdp;
 pud_t *pudp, pud;
 pmd_t *pmdp, pmd;

 pgdp = pgd_offset(mm, addr);
 if (!pgd_present(READ_ONCE(*pgdp)))
  return ((void*)0);

 pudp = pud_offset(pgdp, addr);
 pud = READ_ONCE(*pudp);
 if (sz != PUD_SIZE && pud_none(pud))
  return ((void*)0);

 if (pud_huge(pud) || !pud_present(pud))
  return (pte_t *)pudp;


 if (sz == CONT_PMD_SIZE)
  addr &= CONT_PMD_MASK;

 pmdp = pmd_offset(pudp, addr);
 pmd = READ_ONCE(*pmdp);
 if (!(sz == PMD_SIZE || sz == CONT_PMD_SIZE) &&
     pmd_none(pmd))
  return ((void*)0);
 if (pmd_huge(pmd) || !pmd_present(pmd))
  return (pte_t *)pmdp;

 if (sz == CONT_PTE_SIZE)
  return pte_offset_kernel(pmdp, (addr & CONT_PTE_MASK));

 return ((void*)0);
}
