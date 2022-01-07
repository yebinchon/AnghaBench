
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;


 int AGP_PAGE_DESTROY_UNMAP ;
 int agp_generic_destroy_page (struct page*,int) ;
 int global_cache_flush () ;

__attribute__((used)) static void ali_destroy_page(struct page *page, int flags)
{
 if (page) {
  if (flags & AGP_PAGE_DESTROY_UNMAP) {
   global_cache_flush();
   agp_generic_destroy_page(page, flags);
  } else
   agp_generic_destroy_page(page, flags);
 }
}
