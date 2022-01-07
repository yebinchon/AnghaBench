
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct page {int dummy; } ;
struct mm_struct {int dummy; } ;
typedef int pte_t ;
struct TYPE_3__ {int * pmdv; } ;
typedef TYPE_1__ pmd_t ;


 int PAGE_SHIFT ;
 int PTRS_PER_PTE ;
 unsigned long SRMMU_ET_PTD ;
 int SRMMU_REAL_PTRS_PER_PTE ;
 int __pte (unsigned long) ;
 int page_to_pfn (struct page*) ;
 int set_pte (int *,int ) ;

void pmd_populate(struct mm_struct *mm, pmd_t *pmdp, struct page *ptep)
{
 unsigned long ptp;
 int i;

 ptp = page_to_pfn(ptep) << (PAGE_SHIFT-4);
 for (i = 0; i < PTRS_PER_PTE/SRMMU_REAL_PTRS_PER_PTE; i++) {
  set_pte((pte_t *)&pmdp->pmdv[i], __pte(SRMMU_ET_PTD | ptp));
  ptp += (SRMMU_REAL_PTRS_PER_PTE * sizeof(pte_t) >> 4);
 }
}
