
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;
typedef int dma_addr_t ;


 int coherent_pool ;
 int gen_pool_free (int ,unsigned long,size_t) ;

void arch_dma_free(struct device *dev, size_t size, void *vaddr,
  dma_addr_t dma_addr, unsigned long attrs)
{
 gen_pool_free(coherent_pool, (unsigned long) vaddr, size);
}
