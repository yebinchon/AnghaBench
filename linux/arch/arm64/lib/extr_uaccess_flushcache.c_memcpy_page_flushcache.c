
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;


 int memcpy_flushcache (char*,scalar_t__,size_t) ;
 scalar_t__ page_address (struct page*) ;

void memcpy_page_flushcache(char *to, struct page *page, size_t offset,
       size_t len)
{
 memcpy_flushcache(to, page_address(page) + offset, len);
}
