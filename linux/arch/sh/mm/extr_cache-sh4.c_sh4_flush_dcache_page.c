
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int flags; } ;
struct address_space {int dummy; } ;


 unsigned long CACHE_OC_ADDRESS_ARRAY ;
 int PG_dcache_clean ;
 int clear_bit (int ,int *) ;
 int flush_cache_one (unsigned long,int ) ;
 int mapping_mapped (struct address_space*) ;
 scalar_t__ page_address (struct page*) ;
 struct address_space* page_mapping_file (struct page*) ;
 int page_to_phys (struct page*) ;
 unsigned long shm_align_mask ;
 int wmb () ;

__attribute__((used)) static void sh4_flush_dcache_page(void *arg)
{
 struct page *page = arg;
 unsigned long addr = (unsigned long)page_address(page);

 struct address_space *mapping = page_mapping_file(page);

 if (mapping && !mapping_mapped(mapping))
  clear_bit(PG_dcache_clean, &page->flags);
 else

  flush_cache_one(CACHE_OC_ADDRESS_ARRAY |
    (addr & shm_align_mask), page_to_phys(page));

 wmb();
}
