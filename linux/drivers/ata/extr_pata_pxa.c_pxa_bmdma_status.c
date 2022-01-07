
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pata_pxa_data {int dma_cookie; int dma_chan; } ;
struct dma_tx_state {int dummy; } ;
struct ata_port {struct pata_pxa_data* private_data; } ;
typedef enum dma_status { ____Placeholder_dma_status } dma_status ;


 unsigned char ATA_DMA_ERR ;
 unsigned char ATA_DMA_INTR ;
 int DMA_COMPLETE ;
 int dmaengine_tx_status (int ,int ,struct dma_tx_state*) ;

__attribute__((used)) static unsigned char pxa_bmdma_status(struct ata_port *ap)
{
 struct pata_pxa_data *pd = ap->private_data;
 unsigned char ret = ATA_DMA_INTR;
 struct dma_tx_state state;
 enum dma_status status;

 status = dmaengine_tx_status(pd->dma_chan, pd->dma_cookie, &state);
 if (status != DMA_COMPLETE)
  ret |= ATA_DMA_ERR;

 return ret;
}
