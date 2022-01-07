
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pata_pxa_data {int dma_done; int dma_cookie; int dma_chan; } ;
typedef enum dma_status { ____Placeholder_dma_status } dma_status ;


 int DMA_COMPLETE ;
 int DMA_ERROR ;
 int complete (int *) ;
 int dmaengine_tx_status (int ,int ,int *) ;

__attribute__((used)) static void pxa_ata_dma_irq(void *d)
{
 struct pata_pxa_data *pd = d;
 enum dma_status status;

 status = dmaengine_tx_status(pd->dma_chan, pd->dma_cookie, ((void*)0));
 if (status == DMA_ERROR || status == DMA_COMPLETE)
  complete(&pd->dma_done);
}
