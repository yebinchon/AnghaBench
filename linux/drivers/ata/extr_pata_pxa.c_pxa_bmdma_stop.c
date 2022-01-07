
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pata_pxa_data {int dma_chan; int dma_done; int dma_cookie; } ;
struct ata_queued_cmd {int dev; TYPE_1__* ap; } ;
typedef enum dma_status { ____Placeholder_dma_status } dma_status ;
struct TYPE_2__ {struct pata_pxa_data* private_data; } ;


 int DMA_COMPLETE ;
 int DMA_ERROR ;
 int HZ ;
 int ata_dev_err (int ,char*) ;
 int dmaengine_terminate_all (int ) ;
 int dmaengine_tx_status (int ,int ,int *) ;
 scalar_t__ wait_for_completion_timeout (int *,int ) ;

__attribute__((used)) static void pxa_bmdma_stop(struct ata_queued_cmd *qc)
{
 struct pata_pxa_data *pd = qc->ap->private_data;
 enum dma_status status;

 status = dmaengine_tx_status(pd->dma_chan, pd->dma_cookie, ((void*)0));
 if (status != DMA_ERROR && status != DMA_COMPLETE &&
     wait_for_completion_timeout(&pd->dma_done, HZ))
  ata_dev_err(qc->dev, "Timeout waiting for DMA completion!");

 dmaengine_terminate_all(pd->dma_chan);
}
