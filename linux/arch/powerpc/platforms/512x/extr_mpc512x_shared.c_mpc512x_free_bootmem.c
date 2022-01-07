
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;


 int BUG_ON (int) ;
 int PageTail (struct page*) ;
 int free_reserved_page (struct page*) ;
 int page_ref_count (struct page*) ;

__attribute__((used)) static inline void mpc512x_free_bootmem(struct page *page)
{
 BUG_ON(PageTail(page));
 BUG_ON(page_ref_count(page) > 1);
 free_reserved_page(page);
}
