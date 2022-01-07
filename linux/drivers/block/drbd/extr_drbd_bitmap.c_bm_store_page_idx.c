
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;


 unsigned long BM_PAGE_IDX_MASK ;
 int BUG_ON (int) ;
 int set_page_private (struct page*,unsigned long) ;

__attribute__((used)) static void bm_store_page_idx(struct page *page, unsigned long idx)
{
 BUG_ON(0 != (idx & ~BM_PAGE_IDX_MASK));
 set_page_private(page, idx);
}
