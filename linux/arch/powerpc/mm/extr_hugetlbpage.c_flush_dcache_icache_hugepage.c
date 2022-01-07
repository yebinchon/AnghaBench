
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;


 int BUG_ON (int) ;
 int PageCompound (struct page*) ;
 int PageHighMem (struct page*) ;
 int __flush_dcache_icache (void*) ;
 int compound_nr (struct page*) ;
 void* kmap_atomic (struct page*) ;
 int kunmap_atomic (void*) ;
 void* page_address (struct page*) ;

void flush_dcache_icache_hugepage(struct page *page)
{
 int i;
 void *start;

 BUG_ON(!PageCompound(page));

 for (i = 0; i < compound_nr(page); i++) {
  if (!PageHighMem(page)) {
   __flush_dcache_icache(page_address(page+i));
  } else {
   start = kmap_atomic(page+i);
   __flush_dcache_icache(start);
   kunmap_atomic(start);
  }
 }
}
