
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ dma_addr_t ;
struct TYPE_2__ {scalar_t__ sram_dma; } ;


 TYPE_1__ davinci_soc_info ;
 void* gen_pool_dma_alloc (int ,size_t,scalar_t__*) ;
 int sram_pool ;

void *sram_alloc(size_t len, dma_addr_t *dma)
{
 dma_addr_t dma_base = davinci_soc_info.sram_dma;

 if (dma)
  *dma = 0;
 if (!sram_pool || (dma && !dma_base))
  return ((void*)0);

 return gen_pool_dma_alloc(sram_pool, len, dma);

}
