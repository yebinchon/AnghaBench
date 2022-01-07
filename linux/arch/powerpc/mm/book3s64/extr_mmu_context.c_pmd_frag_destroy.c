
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int pt_frag_refcount; } ;


 unsigned long PAGE_MASK ;
 scalar_t__ PMD_FRAG_NR ;
 unsigned long PMD_FRAG_SIZE_SHIFT ;
 int __free_page (struct page*) ;
 scalar_t__ atomic_sub_and_test (scalar_t__,int *) ;
 int pgtable_pmd_page_dtor (struct page*) ;
 struct page* virt_to_page (void*) ;

__attribute__((used)) static void pmd_frag_destroy(void *pmd_frag)
{
 int count;
 struct page *page;

 page = virt_to_page(pmd_frag);

 count = ((unsigned long)pmd_frag & ~PAGE_MASK) >> PMD_FRAG_SIZE_SHIFT;

 if (atomic_sub_and_test(PMD_FRAG_NR - count, &page->pt_frag_refcount)) {
  pgtable_pmd_page_dtor(page);
  __free_page(page);
 }
}
