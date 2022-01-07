
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int pt_frag_refcount; } ;


 unsigned long PAGE_MASK ;
 scalar_t__ PTE_FRAG_NR ;
 unsigned long PTE_FRAG_SIZE_SHIFT ;
 int __free_page (struct page*) ;
 scalar_t__ atomic_sub_and_test (scalar_t__,int *) ;
 int pgtable_pte_page_dtor (struct page*) ;
 struct page* virt_to_page (void*) ;

void pte_frag_destroy(void *pte_frag)
{
 int count;
 struct page *page;

 page = virt_to_page(pte_frag);

 count = ((unsigned long)pte_frag & ~PAGE_MASK) >> PTE_FRAG_SIZE_SHIFT;

 if (atomic_sub_and_test(PTE_FRAG_NR - count, &page->pt_frag_refcount)) {
  pgtable_pte_page_dtor(page);
  __free_page(page);
 }
}
