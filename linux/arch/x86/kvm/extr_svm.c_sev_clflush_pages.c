
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct page {int dummy; } ;


 int PAGE_SIZE ;
 int clflush_cache_range (int *,int ) ;
 int * kmap_atomic (struct page*) ;
 int kunmap_atomic (int *) ;

__attribute__((used)) static void sev_clflush_pages(struct page *pages[], unsigned long npages)
{
 uint8_t *page_virtual;
 unsigned long i;

 if (npages == 0 || pages == ((void*)0))
  return;

 for (i = 0; i < npages; i++) {
  page_virtual = kmap_atomic(pages[i]);
  clflush_cache_range(page_virtual, PAGE_SIZE);
  kunmap_atomic(page_virtual);
 }
}
