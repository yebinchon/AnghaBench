
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;


 int GFP_KERNEL ;
 unsigned int PAGE_MASK ;
 unsigned int PAGE_SIZE ;
 int __GFP_ZERO ;
 scalar_t__ __get_free_pages (int,unsigned int) ;
 scalar_t__ cpu_has_vce ;
 scalar_t__ empty_zero_page ;
 int mark_page_reserved (struct page*) ;
 int panic (char*) ;
 int split_page (struct page*,unsigned int) ;
 struct page* virt_to_page (void*) ;
 unsigned int zero_page_mask ;

void setup_zero_pages(void)
{
 unsigned int order, i;
 struct page *page;

 if (cpu_has_vce)
  order = 3;
 else
  order = 0;

 empty_zero_page = __get_free_pages(GFP_KERNEL | __GFP_ZERO, order);
 if (!empty_zero_page)
  panic("Oh boy, that early out of memory?");

 page = virt_to_page((void *)empty_zero_page);
 split_page(page, order);
 for (i = 0; i < (1 << order); i++, page++)
  mark_page_reserved(page);

 zero_page_mask = ((PAGE_SIZE << order) - 1) & PAGE_MASK;
}
