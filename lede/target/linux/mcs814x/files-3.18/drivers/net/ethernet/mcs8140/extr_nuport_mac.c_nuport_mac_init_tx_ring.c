
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nuport_mac_priv {int first_pkt; scalar_t__* valid_txskb; int ** tx_skb; scalar_t__ tx_full; scalar_t__ dma_tx; scalar_t__ cur_tx; } ;


 int TX_RING_SIZE ;

__attribute__((used)) static void nuport_mac_init_tx_ring(struct nuport_mac_priv *priv)
{
 int i;

 priv->cur_tx = priv->dma_tx = priv->tx_full = 0;
 for (i = 0; i < TX_RING_SIZE; i++) {
  priv->tx_skb[i] = ((void*)0);
  priv->valid_txskb[i] = 0;
 }
 priv->first_pkt = 1;
}
