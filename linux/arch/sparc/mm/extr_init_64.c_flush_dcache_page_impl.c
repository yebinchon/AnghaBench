
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;


 int BUG_ON (int) ;
 int __flush_dcache_page (int ,int) ;
 int __flush_icache_page (int ) ;
 int __pa (int ) ;
 int atomic_inc (int *) ;
 int dcpage_flushes ;
 scalar_t__ hypervisor ;
 int page_address (struct page*) ;
 int * page_mapping_file (struct page*) ;
 scalar_t__ spitfire ;
 scalar_t__ tlb_type ;

inline void flush_dcache_page_impl(struct page *page)
{
 BUG_ON(tlb_type == hypervisor);
 if (page_mapping_file(page) != ((void*)0) &&
     tlb_type == spitfire)
  __flush_icache_page(__pa(page_address(page)));

}
