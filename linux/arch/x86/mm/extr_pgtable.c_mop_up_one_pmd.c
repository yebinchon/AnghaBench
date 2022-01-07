
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mm_struct {int dummy; } ;
typedef int pmd_t ;
typedef int pgd_t ;


 int PAGE_SHIFT ;
 int mm_dec_nr_pmds (struct mm_struct*) ;
 int paravirt_release_pmd (int) ;
 int pgd_clear (int *) ;
 scalar_t__ pgd_page_vaddr (int ) ;
 int pgd_val (int ) ;
 int pmd_free (struct mm_struct*,int *) ;

__attribute__((used)) static void mop_up_one_pmd(struct mm_struct *mm, pgd_t *pgdp)
{
 pgd_t pgd = *pgdp;

 if (pgd_val(pgd) != 0) {
  pmd_t *pmd = (pmd_t *)pgd_page_vaddr(pgd);

  pgd_clear(pgdp);

  paravirt_release_pmd(pgd_val(pgd) >> PAGE_SHIFT);
  pmd_free(mm, pmd);
  mm_dec_nr_pmds(mm);
 }
}
