
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;


 unsigned long BM_PAGE_IDX_MASK ;
 unsigned long page_private (struct page*) ;

__attribute__((used)) static unsigned long bm_page_to_idx(struct page *page)
{
 return page_private(page) & BM_PAGE_IDX_MASK;
}
