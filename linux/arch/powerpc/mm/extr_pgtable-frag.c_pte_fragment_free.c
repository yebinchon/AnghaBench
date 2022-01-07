
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int pt_frag_refcount; } ;


 int BUG_ON (int) ;
 int __free_page (struct page*) ;
 scalar_t__ atomic_dec_and_test (int *) ;
 scalar_t__ atomic_read (int *) ;
 int pgtable_pte_page_dtor (struct page*) ;
 struct page* virt_to_page (unsigned long*) ;

void pte_fragment_free(unsigned long *table, int kernel)
{
 struct page *page = virt_to_page(table);

 BUG_ON(atomic_read(&page->pt_frag_refcount) <= 0);
 if (atomic_dec_and_test(&page->pt_frag_refcount)) {
  if (!kernel)
   pgtable_pte_page_dtor(page);
  __free_page(page);
 }
}
