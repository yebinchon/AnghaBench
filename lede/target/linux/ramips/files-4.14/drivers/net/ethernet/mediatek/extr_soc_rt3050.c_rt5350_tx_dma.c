
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fe_tx_dma {scalar_t__ txd4; } ;



__attribute__((used)) static void rt5350_tx_dma(struct fe_tx_dma *txd)
{
 txd->txd4 = 0;
}
