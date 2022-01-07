
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int pt_frag_refcount; } ;
struct mm_struct {int page_table_lock; int context; } ;
typedef void pte_t ;


 int PGALLOC_GFP ;
 int PTE_FRAG_NR ;
 int PTE_FRAG_SIZE ;
 int __GFP_ACCOUNT ;
 int __free_page (struct page*) ;
 struct page* alloc_page (int) ;
 int atomic_set (int *,int) ;
 scalar_t__ likely (int) ;
 void* page_address (struct page*) ;
 int pgtable_pte_page_ctor (struct page*) ;
 int pte_frag_get (int *) ;
 int pte_frag_set (int *,void*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static pte_t *__alloc_for_ptecache(struct mm_struct *mm, int kernel)
{
 void *ret = ((void*)0);
 struct page *page;

 if (!kernel) {
  page = alloc_page(PGALLOC_GFP | __GFP_ACCOUNT);
  if (!page)
   return ((void*)0);
  if (!pgtable_pte_page_ctor(page)) {
   __free_page(page);
   return ((void*)0);
  }
 } else {
  page = alloc_page(PGALLOC_GFP);
  if (!page)
   return ((void*)0);
 }

 atomic_set(&page->pt_frag_refcount, 1);

 ret = page_address(page);




 if (PTE_FRAG_NR == 1)
  return ret;
 spin_lock(&mm->page_table_lock);





 if (likely(!pte_frag_get(&mm->context))) {
  atomic_set(&page->pt_frag_refcount, PTE_FRAG_NR);
  pte_frag_set(&mm->context, ret + PTE_FRAG_SIZE);
 }
 spin_unlock(&mm->page_table_lock);

 return (pte_t *)ret;
}
