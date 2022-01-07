
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;


 int cache_op (int ,size_t,int ) ;
 int cpu_dma_wbinval_range ;
 int page_to_phys (struct page*) ;

void arch_dma_prep_coherent(struct page *page, size_t size)
{
 cache_op(page_to_phys(page), size, cpu_dma_wbinval_range);
}
