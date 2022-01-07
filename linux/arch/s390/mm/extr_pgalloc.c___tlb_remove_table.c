
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int _refcount; } ;


 int PAGE_SHIFT ;
 int __free_page (struct page*) ;
 int __pa (void*) ;
 unsigned int atomic_xor_bits (int *,int) ;
 int free_pages (unsigned long,int) ;
 struct page* pfn_to_page (int) ;
 int pgtable_pte_page_dtor (struct page*) ;

void __tlb_remove_table(void *_table)
{
 unsigned int mask = (unsigned long) _table & 3;
 void *table = (void *)((unsigned long) _table ^ mask);
 struct page *page = pfn_to_page(__pa(table) >> PAGE_SHIFT);

 switch (mask) {
 case 0:
  free_pages((unsigned long) table, 2);
  break;
 case 1:
 case 2:
  mask = atomic_xor_bits(&page->_refcount, mask << (4 + 24));
  mask >>= 24;
  if (mask != 0)
   break;

 case 3:
  if (mask & 3)
   atomic_xor_bits(&page->_refcount, 3 << 24);
  pgtable_pte_page_dtor(page);
  __free_page(page);
  break;
 }
}
