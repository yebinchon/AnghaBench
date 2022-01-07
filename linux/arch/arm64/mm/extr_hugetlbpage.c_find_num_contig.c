
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mm_struct {int dummy; } ;
typedef int pud_t ;
typedef int pte_t ;
typedef int pmd_t ;
typedef int pgd_t ;


 int CONT_PMDS ;
 int CONT_PTES ;
 size_t PAGE_SIZE ;
 size_t PMD_SIZE ;
 int * pgd_offset (struct mm_struct*,unsigned long) ;
 int * pmd_offset (int *,unsigned long) ;
 int * pud_offset (int *,unsigned long) ;

__attribute__((used)) static int find_num_contig(struct mm_struct *mm, unsigned long addr,
      pte_t *ptep, size_t *pgsize)
{
 pgd_t *pgdp = pgd_offset(mm, addr);
 pud_t *pudp;
 pmd_t *pmdp;

 *pgsize = PAGE_SIZE;
 pudp = pud_offset(pgdp, addr);
 pmdp = pmd_offset(pudp, addr);
 if ((pte_t *)pmdp == ptep) {
  *pgsize = PMD_SIZE;
  return CONT_PMDS;
 }
 return CONT_PTES;
}
