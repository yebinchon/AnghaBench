
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct platform_device {int dev; } ;
struct TYPE_2__ {char* name; void* direction; void* port; } ;
struct ep93xx_pata_data {void* dma_tx_channel; int udma_out_phys; void* dma_rx_channel; int udma_in_phys; TYPE_1__ dma_tx_data; TYPE_1__ dma_rx_data; struct platform_device* pdev; } ;
struct dma_slave_config {void* dst_addr_width; int dst_addr; void* direction; void* src_addr_width; int src_addr; } ;
typedef int dma_cap_mask_t ;
typedef int conf ;


 void* DMA_DEV_TO_MEM ;
 void* DMA_MEM_TO_DEV ;
 int DMA_SLAVE ;
 void* DMA_SLAVE_BUSWIDTH_4_BYTES ;
 void* EP93XX_DMA_IDE ;
 int dev_err (int *,char*) ;
 int dma_cap_set (int ,int ) ;
 int dma_cap_zero (int ) ;
 int dma_release_channel (void*) ;
 void* dma_request_channel (int ,int ,TYPE_1__*) ;
 scalar_t__ dmaengine_slave_config (void*,struct dma_slave_config*) ;
 int ep93xx_pata_dma_filter ;
 int ep93xx_pata_release_dma (struct ep93xx_pata_data*) ;
 int memset (struct dma_slave_config*,int ,int) ;

__attribute__((used)) static void ep93xx_pata_dma_init(struct ep93xx_pata_data *drv_data)
{
 const struct platform_device *pdev = drv_data->pdev;
 dma_cap_mask_t mask;
 struct dma_slave_config conf;

 dma_cap_zero(mask);
 dma_cap_set(DMA_SLAVE, mask);






 drv_data->dma_rx_data.port = EP93XX_DMA_IDE;
 drv_data->dma_rx_data.direction = DMA_DEV_TO_MEM;
 drv_data->dma_rx_data.name = "ep93xx-pata-rx";
 drv_data->dma_rx_channel = dma_request_channel(mask,
  ep93xx_pata_dma_filter, &drv_data->dma_rx_data);
 if (!drv_data->dma_rx_channel)
  return;

 drv_data->dma_tx_data.port = EP93XX_DMA_IDE;
 drv_data->dma_tx_data.direction = DMA_MEM_TO_DEV;
 drv_data->dma_tx_data.name = "ep93xx-pata-tx";
 drv_data->dma_tx_channel = dma_request_channel(mask,
  ep93xx_pata_dma_filter, &drv_data->dma_tx_data);
 if (!drv_data->dma_tx_channel) {
  dma_release_channel(drv_data->dma_rx_channel);
  return;
 }


 memset(&conf, 0, sizeof(conf));
 conf.direction = DMA_DEV_TO_MEM;
 conf.src_addr = drv_data->udma_in_phys;
 conf.src_addr_width = DMA_SLAVE_BUSWIDTH_4_BYTES;
 if (dmaengine_slave_config(drv_data->dma_rx_channel, &conf)) {
  dev_err(&pdev->dev, "failed to configure rx dma channel\n");
  ep93xx_pata_release_dma(drv_data);
  return;
 }


 memset(&conf, 0, sizeof(conf));
 conf.direction = DMA_MEM_TO_DEV;
 conf.dst_addr = drv_data->udma_out_phys;
 conf.dst_addr_width = DMA_SLAVE_BUSWIDTH_4_BYTES;
 if (dmaengine_slave_config(drv_data->dma_tx_channel, &conf)) {
  dev_err(&pdev->dev, "failed to configure tx dma channel\n");
  ep93xx_pata_release_dma(drv_data);
 }
}
