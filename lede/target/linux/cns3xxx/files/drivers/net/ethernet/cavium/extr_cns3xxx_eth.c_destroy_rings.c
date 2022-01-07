
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tx_desc {int sdp; } ;
struct _tx_ring {struct sk_buff** buff_tab; struct tx_desc* desc; } ;
struct _rx_ring {void** buff_tab; struct rx_desc* desc; } ;
struct sw {int dev; struct _tx_ring tx_ring; struct _rx_ring rx_ring; } ;
struct sk_buff {int len; } ;
struct rx_desc {int sdp; } ;


 int DMA_FROM_DEVICE ;
 int DMA_TO_DEVICE ;
 int RX_DESCS ;
 int RX_SEGMENT_MRU ;
 int TX_DESCS ;
 int dev_kfree_skb (struct sk_buff*) ;
 int dma_unmap_single (int ,int ,int ,int ) ;
 int skb_free_frag (void*) ;

__attribute__((used)) static void destroy_rings(struct sw *sw)
{
 int i;

 for (i = 0; i < RX_DESCS; i++) {
  struct _rx_ring *rx_ring = &sw->rx_ring;
  struct rx_desc *desc = &(rx_ring)->desc[i];
  void *buf = sw->rx_ring.buff_tab[i];

  if (!buf)
   continue;

  dma_unmap_single(sw->dev, desc->sdp, RX_SEGMENT_MRU, DMA_FROM_DEVICE);
  skb_free_frag(buf);
 }

 for (i = 0; i < TX_DESCS; i++) {
  struct _tx_ring *tx_ring = &sw->tx_ring;
  struct tx_desc *desc = &(tx_ring)->desc[i];
  struct sk_buff *skb = sw->tx_ring.buff_tab[i];

  if (!skb)
   continue;

  dma_unmap_single(sw->dev, desc->sdp, skb->len, DMA_TO_DEVICE);
  dev_kfree_skb(skb);
 }
}
