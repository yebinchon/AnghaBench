
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {TYPE_1__* d_ops; int lock; scalar_t__ active; } ;
typedef TYPE_2__ dma_t ;
struct TYPE_6__ {int (* free ) (unsigned int,TYPE_2__*) ;int (* disable ) (unsigned int,TYPE_2__*) ;} ;


 TYPE_2__* dma_channel (unsigned int) ;
 int pr_err (char*,unsigned int) ;
 int stub1 (unsigned int,TYPE_2__*) ;
 int stub2 (unsigned int,TYPE_2__*) ;
 scalar_t__ xchg (int *,int ) ;

void free_dma(unsigned int chan)
{
 dma_t *dma = dma_channel(chan);

 if (!dma)
  goto bad_dma;

 if (dma->active) {
  pr_err("dma%d: freeing active DMA\n", chan);
  dma->d_ops->disable(chan, dma);
  dma->active = 0;
 }

 if (xchg(&dma->lock, 0) != 0) {
  if (dma->d_ops->free)
   dma->d_ops->free(chan, dma);
  return;
 }

 pr_err("dma%d: trying to free free DMA\n", chan);
 return;

bad_dma:
 pr_err("dma: trying to free DMA%d\n", chan);
}
