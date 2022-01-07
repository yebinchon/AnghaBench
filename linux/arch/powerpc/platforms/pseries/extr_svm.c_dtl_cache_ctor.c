
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;


 size_t NR_DTL_PAGE ;
 unsigned long PHYS_PFN (int ) ;
 int WARN_ON (int) ;
 int __pa (void*) ;
 size_t dtl_nr_pages ;
 struct page** dtl_page_store ;
 int is_dtl_page_shared (struct page*) ;
 struct page* pfn_to_page (unsigned long) ;
 int uv_share_page (unsigned long,int) ;

void dtl_cache_ctor(void *addr)
{
 unsigned long pfn = PHYS_PFN(__pa(addr));
 struct page *page = pfn_to_page(pfn);

 if (!is_dtl_page_shared(page)) {
  dtl_page_store[dtl_nr_pages] = page;
  dtl_nr_pages++;
  WARN_ON(dtl_nr_pages >= NR_DTL_PAGE);
  uv_share_page(pfn, 1);
 }
}
