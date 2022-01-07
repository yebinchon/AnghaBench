
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;


 int dma_cache_wback_inv (int ,size_t) ;
 int page_to_phys (struct page*) ;

void arch_dma_prep_coherent(struct page *page, size_t size)
{
 dma_cache_wback_inv(page_to_phys(page), size);
}
