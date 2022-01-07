
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fe_rx_dma {int rxd4; int rxd3; int rxd2; int rxd1; } ;



__attribute__((used)) static inline void fe_get_rxd(struct fe_rx_dma *rxd, struct fe_rx_dma *dma_rxd)
{
 rxd->rxd1 = dma_rxd->rxd1;
 rxd->rxd2 = dma_rxd->rxd2;
 rxd->rxd3 = dma_rxd->rxd3;
 rxd->rxd4 = dma_rxd->rxd4;
}
