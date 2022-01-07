
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;
typedef int phys_addr_t ;


 unsigned long PAGE_SIZE ;
 scalar_t__ PageHighMem (struct page*) ;
 void* __va (int ) ;
 void* kmap_atomic (struct page*) ;
 int kunmap_atomic (void*) ;
 unsigned long offset_in_page (int ) ;
 int page_to_phys (struct page*) ;
 struct page* phys_to_page (int ) ;

__attribute__((used)) static inline void cache_op(phys_addr_t paddr, size_t size,
       void (*fn)(unsigned long start, unsigned long end))
{
 struct page *page = phys_to_page(paddr);
 void *start = __va(page_to_phys(page));
 unsigned long offset = offset_in_page(paddr);
 size_t left = size;

 do {
  size_t len = left;

  if (offset + len > PAGE_SIZE)
   len = PAGE_SIZE - offset;

  if (PageHighMem(page)) {
   start = kmap_atomic(page);

   fn((unsigned long)start + offset,
     (unsigned long)start + offset + len);

   kunmap_atomic(start);
  } else {
   fn((unsigned long)start + offset,
     (unsigned long)start + offset + len);
  }
  offset = 0;

  page++;
  start += PAGE_SIZE;
  left -= len;
 } while (left);
}
