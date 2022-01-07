
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fe_tx_dma {int txd2; int txd4; int txd3; int txd1; } ;



__attribute__((used)) static inline void fe_set_txd(struct fe_tx_dma *txd, struct fe_tx_dma *dma_txd)
{
 dma_txd->txd1 = txd->txd1;
 dma_txd->txd3 = txd->txd3;
 dma_txd->txd4 = txd->txd4;

 dma_txd->txd2 = txd->txd2;
}
