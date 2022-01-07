
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mm_struct {int dummy; } ;
typedef int pmd_t ;
typedef int pgtable_t ;
typedef int pgd_t ;


 int free_pages (unsigned long,int ) ;
 int mm_dec_nr_pmds (struct mm_struct*) ;
 int mm_dec_nr_ptes (struct mm_struct*) ;
 int pmd_ERROR (int ) ;
 scalar_t__ pmd_bad (int ) ;
 int pmd_clear (int *) ;
 int pmd_free (struct mm_struct*,int *) ;
 scalar_t__ pmd_none (int ) ;
 int * pmd_off (int *,int ) ;
 int pmd_pgtable (int ) ;
 int pte_free (struct mm_struct*,int ) ;

void free_pgd_slow(struct mm_struct *mm, pgd_t *pgd)
{
 pmd_t *pmd;
 pgtable_t pte;

 if (!pgd)
  return;


 pmd = pmd_off(pgd, 0);
 if (pmd_none(*pmd))
  goto free;
 if (pmd_bad(*pmd)) {
  pmd_ERROR(*pmd);
  pmd_clear(pmd);
  goto free;
 }

 pte = pmd_pgtable(*pmd);
 pmd_clear(pmd);
 pte_free(mm, pte);
 mm_dec_nr_ptes(mm);
 pmd_free(mm, pmd);
 mm_dec_nr_pmds(mm);
free:
 free_pages((unsigned long) pgd, 0);
}
