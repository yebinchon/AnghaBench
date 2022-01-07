
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct rsxx_dma_ctrl {TYPE_2__* card; } ;
struct rsxx_dma {scalar_t__ cmd; int dma_addr; } ;
struct TYPE_4__ {TYPE_1__* dev; } ;
struct TYPE_3__ {int dev; } ;


 int DMA_FROM_DEVICE ;
 int DMA_TO_DEVICE ;
 scalar_t__ HW_CMD_BLK_DISCARD ;
 scalar_t__ HW_CMD_BLK_WRITE ;
 int dma_mapping_error (int *,int ) ;
 int dma_unmap_page (int *,int ,int ,int ) ;
 int get_dma_size (struct rsxx_dma*) ;
 int kmem_cache_free (int ,struct rsxx_dma*) ;
 int rsxx_dma_pool ;

__attribute__((used)) static void rsxx_free_dma(struct rsxx_dma_ctrl *ctrl, struct rsxx_dma *dma)
{
 if (dma->cmd != HW_CMD_BLK_DISCARD) {
  if (!dma_mapping_error(&ctrl->card->dev->dev, dma->dma_addr)) {
   dma_unmap_page(&ctrl->card->dev->dev, dma->dma_addr,
           get_dma_size(dma),
           dma->cmd == HW_CMD_BLK_WRITE ?
         DMA_TO_DEVICE :
         DMA_FROM_DEVICE);
  }
 }

 kmem_cache_free(rsxx_dma_pool, dma);
}
