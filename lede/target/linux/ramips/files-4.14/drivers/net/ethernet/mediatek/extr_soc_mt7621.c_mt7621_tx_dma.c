
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fe_tx_dma {int txd4; } ;


 int MT7621_TX_DMA_FPORT ;

__attribute__((used)) static void mt7621_tx_dma(struct fe_tx_dma *txd)
{
 txd->txd4 = MT7621_TX_DMA_FPORT;
}
