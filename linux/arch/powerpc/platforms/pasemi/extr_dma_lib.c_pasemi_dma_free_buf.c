
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pasemi_dmachan {int dummy; } ;
typedef int dma_addr_t ;
struct TYPE_2__ {int dev; } ;


 int GFP_KERNEL ;
 int dma_free_coherent (int *,int,int *,int ) ;
 TYPE_1__* dma_pdev ;

void pasemi_dma_free_buf(struct pasemi_dmachan *chan, int size,
    dma_addr_t *handle)
{
 dma_free_coherent(&dma_pdev->dev, size, handle, GFP_KERNEL);
}
