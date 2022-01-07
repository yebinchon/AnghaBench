
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct scatterlist {int dummy; } ;
struct TYPE_3__ {int sgcount; int invalid; struct scatterlist* sg; scalar_t__ active; } ;
typedef TYPE_1__ dma_t ;


 TYPE_1__* dma_channel (unsigned int) ;
 int pr_err (char*,unsigned int) ;

void set_dma_sg (unsigned int chan, struct scatterlist *sg, int nr_sg)
{
 dma_t *dma = dma_channel(chan);

 if (dma->active)
  pr_err("dma%d: altering DMA SG while DMA active\n", chan);

 dma->sg = sg;
 dma->sgcount = nr_sg;
 dma->invalid = 1;
}
