
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int kmem_cache_destroy (int ) ;
 int rsxx_dma_pool ;

void rsxx_dma_cleanup(void)
{
 kmem_cache_destroy(rsxx_dma_pool);
}
