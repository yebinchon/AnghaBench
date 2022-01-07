
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;
typedef scalar_t__ phys_addr_t ;


 int flush_dcache_range (scalar_t__,scalar_t__) ;
 scalar_t__ page_to_phys (struct page*) ;

void arch_dma_prep_coherent(struct page *page, size_t size)
{
 phys_addr_t paddr = page_to_phys(page);

 flush_dcache_range(paddr, paddr + size);
}
