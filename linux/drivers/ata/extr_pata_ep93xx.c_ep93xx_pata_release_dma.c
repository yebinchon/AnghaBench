
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ep93xx_pata_data {int * dma_tx_channel; int * dma_rx_channel; } ;


 int dma_release_channel (int *) ;

__attribute__((used)) static void ep93xx_pata_release_dma(struct ep93xx_pata_data *drv_data)
{
 if (drv_data->dma_rx_channel) {
  dma_release_channel(drv_data->dma_rx_channel);
  drv_data->dma_rx_channel = ((void*)0);
 }
 if (drv_data->dma_tx_channel) {
  dma_release_channel(drv_data->dma_tx_channel);
  drv_data->dma_tx_channel = ((void*)0);
 }
}
