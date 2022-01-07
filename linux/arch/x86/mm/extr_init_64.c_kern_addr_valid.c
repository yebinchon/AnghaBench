
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pud_t ;
typedef int pte_t ;
typedef int pmd_t ;
typedef int pgd_t ;
typedef int p4d_t ;


 long __VIRTUAL_MASK_SHIFT ;
 scalar_t__ p4d_none (int ) ;
 int * p4d_offset (int *,unsigned long) ;
 int pfn_valid (int ) ;
 scalar_t__ pgd_none (int ) ;
 int * pgd_offset_k (unsigned long) ;
 scalar_t__ pmd_large (int ) ;
 scalar_t__ pmd_none (int ) ;
 int * pmd_offset (int *,unsigned long) ;
 int pmd_pfn (int ) ;
 scalar_t__ pte_none (int ) ;
 int * pte_offset_kernel (int *,unsigned long) ;
 int pte_pfn (int ) ;
 scalar_t__ pud_large (int ) ;
 scalar_t__ pud_none (int ) ;
 int * pud_offset (int *,unsigned long) ;
 int pud_pfn (int ) ;

int kern_addr_valid(unsigned long addr)
{
 unsigned long above = ((long)addr) >> __VIRTUAL_MASK_SHIFT;
 pgd_t *pgd;
 p4d_t *p4d;
 pud_t *pud;
 pmd_t *pmd;
 pte_t *pte;

 if (above != 0 && above != -1UL)
  return 0;

 pgd = pgd_offset_k(addr);
 if (pgd_none(*pgd))
  return 0;

 p4d = p4d_offset(pgd, addr);
 if (p4d_none(*p4d))
  return 0;

 pud = pud_offset(p4d, addr);
 if (pud_none(*pud))
  return 0;

 if (pud_large(*pud))
  return pfn_valid(pud_pfn(*pud));

 pmd = pmd_offset(pud, addr);
 if (pmd_none(*pmd))
  return 0;

 if (pmd_large(*pmd))
  return pfn_valid(pmd_pfn(*pmd));

 pte = pte_offset_kernel(pmd, addr);
 if (pte_none(*pte))
  return 0;

 return pfn_valid(pte_pfn(*pte));
}
