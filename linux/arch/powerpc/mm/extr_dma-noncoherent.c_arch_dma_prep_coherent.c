
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;


 int flush_dcache_range (unsigned long,unsigned long) ;
 scalar_t__ page_address (struct page*) ;

void arch_dma_prep_coherent(struct page *page, size_t size)
{
 unsigned long kaddr = (unsigned long)page_address(page);

 flush_dcache_range(kaddr, kaddr + size);
}
