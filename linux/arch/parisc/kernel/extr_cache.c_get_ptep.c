
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pud_t ;
typedef int pte_t ;
typedef int pmd_t ;
typedef int pgd_t ;


 int pgd_none (int ) ;
 int pmd_none (int ) ;
 int * pmd_offset (int *,unsigned long) ;
 int * pte_offset_map (int *,unsigned long) ;
 int pud_none (int ) ;
 int * pud_offset (int *,unsigned long) ;

__attribute__((used)) static inline pte_t *get_ptep(pgd_t *pgd, unsigned long addr)
{
 pte_t *ptep = ((void*)0);

 if (!pgd_none(*pgd)) {
  pud_t *pud = pud_offset(pgd, addr);
  if (!pud_none(*pud)) {
   pmd_t *pmd = pmd_offset(pud, addr);
   if (!pmd_none(*pmd))
    ptep = pte_offset_map(pmd, addr);
  }
 }
 return ptep;
}
