
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {unsigned long count; int invalid; int * sg; scalar_t__ active; } ;
typedef TYPE_1__ dma_t ;


 TYPE_1__* dma_channel (unsigned int) ;
 int pr_err (char*,unsigned int) ;

void set_dma_count (unsigned int chan, unsigned long count)
{
 dma_t *dma = dma_channel(chan);

 if (dma->active)
  pr_err("dma%d: altering DMA count while DMA active\n", chan);

 dma->sg = ((void*)0);
 dma->count = count;
 dma->invalid = 1;
}
