
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;


 int __dma_flush_area (int ,size_t) ;
 int page_address (struct page*) ;

void arch_dma_prep_coherent(struct page *page, size_t size)
{
 __dma_flush_area(page_address(page), size);
}
