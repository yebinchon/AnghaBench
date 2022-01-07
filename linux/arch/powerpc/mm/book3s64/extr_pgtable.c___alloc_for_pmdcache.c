
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct page {int pt_frag_refcount; } ;
struct TYPE_2__ {void* pmd_frag; } ;
struct mm_struct {int page_table_lock; TYPE_1__ context; } ;
typedef void pmd_t ;
typedef int gfp_t ;


 int GFP_KERNEL_ACCOUNT ;
 int PMD_FRAG_NR ;
 int PMD_FRAG_SIZE ;
 int __GFP_ACCOUNT ;
 int __GFP_ZERO ;
 int __free_pages (struct page*,int ) ;
 struct page* alloc_page (int) ;
 int atomic_set (int *,int) ;
 struct mm_struct init_mm ;
 scalar_t__ likely (int) ;
 void* page_address (struct page*) ;
 int pgtable_pmd_page_ctor (struct page*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static pmd_t *__alloc_for_pmdcache(struct mm_struct *mm)
{
 void *ret = ((void*)0);
 struct page *page;
 gfp_t gfp = GFP_KERNEL_ACCOUNT | __GFP_ZERO;

 if (mm == &init_mm)
  gfp &= ~__GFP_ACCOUNT;
 page = alloc_page(gfp);
 if (!page)
  return ((void*)0);
 if (!pgtable_pmd_page_ctor(page)) {
  __free_pages(page, 0);
  return ((void*)0);
 }

 atomic_set(&page->pt_frag_refcount, 1);

 ret = page_address(page);




 if (PMD_FRAG_NR == 1)
  return ret;

 spin_lock(&mm->page_table_lock);





 if (likely(!mm->context.pmd_frag)) {
  atomic_set(&page->pt_frag_refcount, PMD_FRAG_NR);
  mm->context.pmd_frag = ret + PMD_FRAG_SIZE;
 }
 spin_unlock(&mm->page_table_lock);

 return (pmd_t *)ret;
}
