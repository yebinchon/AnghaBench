
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int pt_frag_refcount; } ;


 int BUG_ON (int) ;
 int __free_page (struct page*) ;
 scalar_t__ atomic_dec_and_test (int *) ;
 scalar_t__ atomic_read (int *) ;
 int pgtable_pmd_page_dtor (struct page*) ;
 struct page* virt_to_page (unsigned long*) ;

void pmd_fragment_free(unsigned long *pmd)
{
 struct page *page = virt_to_page(pmd);

 BUG_ON(atomic_read(&page->pt_frag_refcount) <= 0);
 if (atomic_dec_and_test(&page->pt_frag_refcount)) {
  pgtable_pmd_page_dtor(page);
  __free_page(page);
 }
}
