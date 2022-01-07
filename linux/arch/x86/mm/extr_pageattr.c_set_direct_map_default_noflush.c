
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;


 int __set_pages_p (struct page*,int) ;

int set_direct_map_default_noflush(struct page *page)
{
 return __set_pages_p(page, 1);
}
