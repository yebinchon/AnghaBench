
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mm_struct {int dummy; } ;
typedef int pud_t ;
typedef int pmd_t ;
typedef int pgd_t ;
typedef int p4d_t ;


 int KERNEL_PGD_BOUNDARY ;
 int PREALLOCATED_PMDS ;
 int PTRS_PER_PMD ;
 int memcpy (int *,int *,int) ;
 int * p4d_offset (int *,int ) ;
 scalar_t__ pgd_page_vaddr (int ) ;
 int * pud_offset (int *,int ) ;
 int pud_populate (struct mm_struct*,int *,int *) ;
 int * swapper_pg_dir ;

__attribute__((used)) static void pgd_prepopulate_pmd(struct mm_struct *mm, pgd_t *pgd, pmd_t *pmds[])
{
 p4d_t *p4d;
 pud_t *pud;
 int i;

 if (PREALLOCATED_PMDS == 0)
  return;

 p4d = p4d_offset(pgd, 0);
 pud = pud_offset(p4d, 0);

 for (i = 0; i < PREALLOCATED_PMDS; i++, pud++) {
  pmd_t *pmd = pmds[i];

  if (i >= KERNEL_PGD_BOUNDARY)
   memcpy(pmd, (pmd_t *)pgd_page_vaddr(swapper_pg_dir[i]),
          sizeof(pmd_t) * PTRS_PER_PMD);

  pud_populate(mm, pud, pmd);
 }
}
