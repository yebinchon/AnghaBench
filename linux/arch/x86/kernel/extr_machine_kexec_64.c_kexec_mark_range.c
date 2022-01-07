
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;


 unsigned long PAGE_SHIFT ;
 struct page* pfn_to_page (unsigned long) ;
 int set_pages_ro (struct page*,unsigned int) ;
 int set_pages_rw (struct page*,unsigned int) ;

__attribute__((used)) static int
kexec_mark_range(unsigned long start, unsigned long end, bool protect)
{
 struct page *page;
 unsigned int nr_pages;





 if (!end || start > end)
  return 0;

 page = pfn_to_page(start >> PAGE_SHIFT);
 nr_pages = (end >> PAGE_SHIFT) - (start >> PAGE_SHIFT) + 1;
 if (protect)
  return set_pages_ro(page, nr_pages);
 else
  return set_pages_rw(page, nr_pages);
}
