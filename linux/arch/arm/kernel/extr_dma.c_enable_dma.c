
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int active; TYPE_1__* d_ops; int lock; } ;
typedef TYPE_2__ dma_t ;
struct TYPE_5__ {int (* enable ) (unsigned int,TYPE_2__*) ;} ;


 int BUG () ;
 TYPE_2__* dma_channel (unsigned int) ;
 int pr_err (char*,unsigned int) ;
 int stub1 (unsigned int,TYPE_2__*) ;

void enable_dma (unsigned int chan)
{
 dma_t *dma = dma_channel(chan);

 if (!dma->lock)
  goto free_dma;

 if (dma->active == 0) {
  dma->active = 1;
  dma->d_ops->enable(chan, dma);
 }
 return;

free_dma:
 pr_err("dma%d: trying to enable free DMA\n", chan);
 BUG();
}
