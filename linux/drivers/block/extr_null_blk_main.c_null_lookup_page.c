
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nullb_page {int dummy; } ;
struct nullb {int dummy; } ;
typedef int sector_t ;


 struct nullb_page* __null_lookup_page (struct nullb*,int ,int,int) ;

__attribute__((used)) static struct nullb_page *null_lookup_page(struct nullb *nullb,
 sector_t sector, bool for_write, bool ignore_cache)
{
 struct nullb_page *page = ((void*)0);

 if (!ignore_cache)
  page = __null_lookup_page(nullb, sector, for_write, 1);
 if (page)
  return page;
 return __null_lookup_page(nullb, sector, for_write, 0);
}
