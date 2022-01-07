
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {unsigned int dma_mode; int invalid; scalar_t__ active; } ;
typedef TYPE_1__ dma_t ;


 TYPE_1__* dma_channel (unsigned int) ;
 int pr_err (char*,unsigned int) ;

void set_dma_mode (unsigned int chan, unsigned int mode)
{
 dma_t *dma = dma_channel(chan);

 if (dma->active)
  pr_err("dma%d: altering DMA mode while DMA active\n", chan);

 dma->dma_mode = mode;
 dma->invalid = 1;
}
