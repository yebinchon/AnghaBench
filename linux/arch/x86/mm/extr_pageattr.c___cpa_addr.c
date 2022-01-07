
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;
struct cpa_data {int flags; unsigned long* vaddr; struct page** pages; } ;


 int CPA_ARRAY ;
 int CPA_PAGES_ARRAY ;
 unsigned long PAGE_SIZE ;
 int PageHighMem (struct page*) ;
 scalar_t__ page_address (struct page*) ;
 scalar_t__ unlikely (int ) ;

__attribute__((used)) static unsigned long __cpa_addr(struct cpa_data *cpa, unsigned long idx)
{
 if (cpa->flags & CPA_PAGES_ARRAY) {
  struct page *page = cpa->pages[idx];

  if (unlikely(PageHighMem(page)))
   return 0;

  return (unsigned long)page_address(page);
 }

 if (cpa->flags & CPA_ARRAY)
  return cpa->vaddr[idx];

 return *cpa->vaddr + idx * PAGE_SIZE;
}
