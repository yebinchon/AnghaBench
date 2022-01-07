
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nuport_mac_priv {scalar_t__ rx_addr; TYPE_1__* pdev; int ** rx_skb; } ;
struct TYPE_2__ {int dev; } ;


 int DMA_TO_DEVICE ;
 int RX_ALLOC_SIZE ;
 int RX_RING_SIZE ;
 int dev_kfree_skb (int *) ;
 int dma_unmap_single (int *,scalar_t__,int ,int ) ;

__attribute__((used)) static void nuport_mac_free_rx_ring(struct nuport_mac_priv *priv)
{
 int i;

 for (i = 0; i < RX_RING_SIZE; i++) {
  if (!priv->rx_skb[i])
   continue;

  dev_kfree_skb(priv->rx_skb[i]);
  priv->rx_skb[i] = ((void*)0);
 }

 if (priv->rx_addr)
  dma_unmap_single(&priv->pdev->dev, priv->rx_addr, RX_ALLOC_SIZE,
    DMA_TO_DEVICE);
}
