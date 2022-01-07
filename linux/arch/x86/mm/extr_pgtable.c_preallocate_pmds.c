
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mm_struct {int dummy; } ;
typedef int pmd_t ;
typedef int gfp_t ;


 int ENOMEM ;
 int GFP_PGTABLE_USER ;
 int __GFP_ACCOUNT ;
 scalar_t__ __get_free_page (int ) ;
 int free_page (unsigned long) ;
 int free_pmds (struct mm_struct*,int **,int) ;
 struct mm_struct init_mm ;
 int mm_inc_nr_pmds (struct mm_struct*) ;
 int pgtable_pmd_page_ctor (int ) ;
 int virt_to_page (int *) ;

__attribute__((used)) static int preallocate_pmds(struct mm_struct *mm, pmd_t *pmds[], int count)
{
 int i;
 bool failed = 0;
 gfp_t gfp = GFP_PGTABLE_USER;

 if (mm == &init_mm)
  gfp &= ~__GFP_ACCOUNT;

 for (i = 0; i < count; i++) {
  pmd_t *pmd = (pmd_t *)__get_free_page(gfp);
  if (!pmd)
   failed = 1;
  if (pmd && !pgtable_pmd_page_ctor(virt_to_page(pmd))) {
   free_page((unsigned long)pmd);
   pmd = ((void*)0);
   failed = 1;
  }
  if (pmd)
   mm_inc_nr_pmds(mm);
  pmds[i] = pmd;
 }

 if (failed) {
  free_pmds(mm, pmds, count);
  return -ENOMEM;
 }

 return 0;
}
