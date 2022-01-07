
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int invalid; void* addr; int * sg; scalar_t__ active; } ;
typedef TYPE_1__ dma_t ;


 TYPE_1__* dma_channel (unsigned int) ;
 int pr_err (char*,unsigned int) ;

void __set_dma_addr (unsigned int chan, void *addr)
{
 dma_t *dma = dma_channel(chan);

 if (dma->active)
  pr_err("dma%d: altering DMA address while DMA active\n", chan);

 dma->sg = ((void*)0);
 dma->addr = addr;
 dma->invalid = 1;
}
