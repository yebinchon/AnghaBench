
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;


 int _PAGE_CACHE_MODE_WT ;
 int _set_pages_array (struct page**,int,int ) ;

int set_pages_array_wt(struct page **pages, int numpages)
{
 return _set_pages_array(pages, numpages, _PAGE_CACHE_MODE_WT);
}
