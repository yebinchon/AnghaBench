
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pud_t ;
typedef int pte_t ;
typedef int pmd_t ;
typedef int pgd_t ;
typedef int p4d_t ;


 int * p4d_offset (int *,unsigned long) ;
 int * pgd_offset_k (unsigned long) ;
 int * pmd_offset (int *,unsigned long) ;
 int * pte_offset_kernel (int *,unsigned long) ;
 int * pud_offset (int *,unsigned long) ;

__attribute__((used)) static inline pte_t *kmap_get_fixmap_pte(unsigned long vaddr)
{
 pgd_t *pgd = pgd_offset_k(vaddr);
 p4d_t *p4d = p4d_offset(pgd, vaddr);
 pud_t *pud = pud_offset(p4d, vaddr);
 pmd_t *pmd = pmd_offset(pud, vaddr);
 return pte_offset_kernel(pmd, vaddr);
}
