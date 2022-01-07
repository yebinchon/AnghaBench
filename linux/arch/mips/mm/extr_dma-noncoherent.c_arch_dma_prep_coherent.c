
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;


 int dma_cache_wback_inv (unsigned long,size_t) ;
 scalar_t__ page_address (struct page*) ;

void arch_dma_prep_coherent(struct page *page, size_t size)
{
 dma_cache_wback_inv((unsigned long)page_address(page), size);
}
