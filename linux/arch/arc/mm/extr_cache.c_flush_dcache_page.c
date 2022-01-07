
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {unsigned long index; int flags; } ;
struct address_space {int dummy; } ;
typedef unsigned long phys_addr_t ;


 unsigned long PAGE_SHIFT ;
 int PG_dc_clean ;
 int __flush_dcache_page (unsigned long,unsigned long) ;
 scalar_t__ addr_not_cache_congruent (unsigned long,unsigned long) ;
 int cache_is_vipt_aliasing () ;
 int clear_bit (int ,int *) ;
 int mapping_mapped (struct address_space*) ;
 scalar_t__ page_address (struct page*) ;
 scalar_t__ page_mapcount (struct page*) ;
 struct address_space* page_mapping_file (struct page*) ;

void flush_dcache_page(struct page *page)
{
 struct address_space *mapping;

 if (!cache_is_vipt_aliasing()) {
  clear_bit(PG_dc_clean, &page->flags);
  return;
 }


 mapping = page_mapping_file(page);
 if (!mapping)
  return;





 if (!mapping_mapped(mapping)) {
  clear_bit(PG_dc_clean, &page->flags);
 } else if (page_mapcount(page)) {


  phys_addr_t paddr = (unsigned long)page_address(page);
  unsigned long vaddr = page->index << PAGE_SHIFT;

  if (addr_not_cache_congruent(paddr, vaddr))
   __flush_dcache_page(paddr, vaddr);
 }
}
