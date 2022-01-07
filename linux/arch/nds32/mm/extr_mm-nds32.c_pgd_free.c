
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;
struct mm_struct {int dummy; } ;
typedef int pmd_t ;
typedef int pgd_t ;


 int NR_PAGETABLE ;
 int dec_zone_page_state (int ,int ) ;
 int free_pages (unsigned long,int ) ;
 int mm_dec_nr_ptes (struct mm_struct*) ;
 int pmd_ERROR (int ) ;
 scalar_t__ pmd_bad (int ) ;
 int pmd_clear (int *) ;
 int pmd_free (struct mm_struct*,int *) ;
 scalar_t__ pmd_none (int ) ;
 struct page* pmd_page (int ) ;
 int pte_free (struct mm_struct*,struct page*) ;
 int virt_to_page (unsigned long*) ;

void pgd_free(struct mm_struct *mm, pgd_t * pgd)
{
 pmd_t *pmd;
 struct page *pte;

 if (!pgd)
  return;

 pmd = (pmd_t *) pgd;
 if (pmd_none(*pmd))
  goto free;
 if (pmd_bad(*pmd)) {
  pmd_ERROR(*pmd);
  pmd_clear(pmd);
  goto free;
 }

 pte = pmd_page(*pmd);
 pmd_clear(pmd);
 dec_zone_page_state(virt_to_page((unsigned long *)pgd), NR_PAGETABLE);
 pte_free(mm, pte);
 mm_dec_nr_ptes(mm);
 pmd_free(mm, pmd);
free:
 free_pages((unsigned long)pgd, 0);
}
