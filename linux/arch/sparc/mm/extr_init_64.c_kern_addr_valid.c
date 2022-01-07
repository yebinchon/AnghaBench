
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pud_t ;
typedef int pte_t ;
typedef int pmd_t ;
typedef int pgd_t ;


 scalar_t__ KERNBASE ;
 unsigned long PAGE_SHIFT ;
 unsigned long __pa (unsigned long) ;
 int _end ;
 unsigned long max_phys_bits ;
 int pfn_valid (unsigned long) ;
 scalar_t__ pgd_none (int ) ;
 int * pgd_offset_k (unsigned long) ;
 scalar_t__ pmd_large (int ) ;
 scalar_t__ pmd_none (int ) ;
 int * pmd_offset (int *,unsigned long) ;
 unsigned long pmd_pfn (int ) ;
 scalar_t__ pte_none (int ) ;
 int * pte_offset_kernel (int *,unsigned long) ;
 unsigned long pte_pfn (int ) ;
 scalar_t__ pud_large (int ) ;
 scalar_t__ pud_none (int ) ;
 int * pud_offset (int *,unsigned long) ;
 unsigned long pud_pfn (int ) ;

bool kern_addr_valid(unsigned long addr)
{
 pgd_t *pgd;
 pud_t *pud;
 pmd_t *pmd;
 pte_t *pte;

 if ((long)addr < 0L) {
  unsigned long pa = __pa(addr);

  if ((pa >> max_phys_bits) != 0UL)
   return 0;

  return pfn_valid(pa >> PAGE_SHIFT);
 }

 if (addr >= (unsigned long) KERNBASE &&
     addr < (unsigned long)&_end)
  return 1;

 pgd = pgd_offset_k(addr);
 if (pgd_none(*pgd))
  return 0;

 pud = pud_offset(pgd, addr);
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
