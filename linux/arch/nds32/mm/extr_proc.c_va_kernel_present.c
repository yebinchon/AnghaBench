
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pte_t ;
typedef int pmd_t ;


 int pgd_offset_k (unsigned long) ;
 int pmd_none (int ) ;
 int * pmd_offset (int ,unsigned long) ;
 int* pte_offset_map (int *,unsigned long) ;
 scalar_t__ pte_present (int) ;

int va_kernel_present(unsigned long addr)
{
 pmd_t *pmd;
 pte_t *ptep, pte;

 pmd = pmd_offset(pgd_offset_k(addr), addr);
 if (!pmd_none(*pmd)) {
  ptep = pte_offset_map(pmd, addr);
  pte = *ptep;
  if (pte_present(pte))
   return pte;
 }
 return 0;
}
