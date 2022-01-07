
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
struct pasemi_dmachan {int ring_size; int ring_virt; int ring_dma; } ;
struct TYPE_2__ {int dev; } ;


 int BUG_ON (int ) ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int dma_alloc_coherent (int *,int,int *,int ) ;
 TYPE_1__* dma_pdev ;

int pasemi_dma_alloc_ring(struct pasemi_dmachan *chan, int ring_size)
{
 BUG_ON(chan->ring_virt);

 chan->ring_size = ring_size;

 chan->ring_virt = dma_alloc_coherent(&dma_pdev->dev,
          ring_size * sizeof(u64),
          &chan->ring_dma, GFP_KERNEL);

 if (!chan->ring_virt)
  return -ENOMEM;

 return 0;
}
