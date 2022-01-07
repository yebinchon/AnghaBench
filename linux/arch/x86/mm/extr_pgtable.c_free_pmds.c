
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mm_struct {int dummy; } ;
typedef int pmd_t ;


 int free_page (unsigned long) ;
 int mm_dec_nr_pmds (struct mm_struct*) ;
 int pgtable_pmd_page_dtor (int ) ;
 int virt_to_page (int *) ;

__attribute__((used)) static void free_pmds(struct mm_struct *mm, pmd_t *pmds[], int count)
{
 int i;

 for (i = 0; i < count; i++)
  if (pmds[i]) {
   pgtable_pmd_page_dtor(virt_to_page(pmds[i]));
   free_page((unsigned long)pmds[i]);
   mm_dec_nr_pmds(mm);
  }
}
