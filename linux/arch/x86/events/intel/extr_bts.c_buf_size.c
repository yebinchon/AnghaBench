
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;


 int PAGE_SHIFT ;
 int page_private (struct page*) ;

__attribute__((used)) static size_t buf_size(struct page *page)
{
 return 1 << (PAGE_SHIFT + page_private(page));
}
