
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct sk_buff {int ip_summed; int pkt_type; int protocol; int len; scalar_t__ data; } ;
struct nuport_mac_priv {int* irq_rxskb; size_t cur_rx; int* pkt_len; int buffer_shifting_len; struct sk_buff** rx_skb; int rx_addr; TYPE_1__* pdev; } ;
struct TYPE_4__ {int rx_bytes; int rx_dropped; int rx_packets; int rx_errors; int rx_missed_errors; } ;
struct net_device {int last_rx; TYPE_2__ stats; } ;
struct TYPE_3__ {int dev; } ;


 int CHECKSUM_UNNECESSARY ;
 int DMA_FROM_DEVICE ;
 int ERROR_FILTER_MASK ;
 int MAX_ETH_FRAME_SIZE ;
 int NET_RX_DROP ;
 int PACKET_BROADCAST ;
 int PACKET_MULTICAST ;
 int PACKET_OTHERHOST ;
 int RX_ALLOC_SIZE ;
 size_t RX_RING_SIZE ;
 int RX_SKB_HEADROOM ;
 int dev_kfree_skb_irq (struct sk_buff*) ;
 int dma_unmap_single (int *,int ,int ,int ) ;
 int eth_type_trans (struct sk_buff*,struct net_device*) ;
 int get_unaligned (int *) ;
 int jiffies ;
 struct sk_buff* netdev_alloc_skb (struct net_device*,int ) ;
 struct nuport_mac_priv* netdev_priv (struct net_device*) ;
 int netif_receive_skb (struct sk_buff*) ;
 int skb_put (struct sk_buff*,int) ;
 int skb_reserve (struct sk_buff*,int ) ;

__attribute__((used)) static int nuport_mac_rx(struct net_device *dev, int limit)
{
 struct nuport_mac_priv *priv = netdev_priv(dev);
 struct sk_buff *skb;
 int len, status;
 int count = 0;

 while (count < limit && !priv->irq_rxskb[priv->cur_rx]) {
  skb = priv->rx_skb[priv->cur_rx];
  len = priv->pkt_len[priv->cur_rx];


  len = len - priv->buffer_shifting_len;
  skb->data = skb->data + priv->buffer_shifting_len;


  status = get_unaligned((u32 *) (skb->data + len));

  dma_unmap_single(&priv->pdev->dev, priv->rx_addr, skb->len,
    DMA_FROM_DEVICE);


  if (!(status & (1 << 30))) {
   dev_kfree_skb_irq(skb);
   goto exit;
  }


  if (status & (1 << 31)) {
   dev->stats.rx_missed_errors++;
   dev_kfree_skb_irq(skb);
   goto exit;
  }


  if ((!(status & (1 << 18))) || (status & ERROR_FILTER_MASK))
   dev->stats.rx_errors++;

  if (len > MAX_ETH_FRAME_SIZE) {
   dev_kfree_skb_irq(skb);
   goto exit;
  } else
   skb_put(skb, len);

  skb->protocol = eth_type_trans(skb, dev);
  dev->stats.rx_packets++;

  if (status & (1 << 29))
   skb->pkt_type = PACKET_OTHERHOST;
  if (status & (1 << 27))
   skb->pkt_type = PACKET_MULTICAST;
  if (status & (1 << 28))
   skb->pkt_type = PACKET_BROADCAST;

  skb->ip_summed = CHECKSUM_UNNECESSARY;


  status = netif_receive_skb(skb);
  if (status != NET_RX_DROP)
   dev->stats.rx_bytes += len - 4;
  else
   dev->stats.rx_dropped++;

  dev->last_rx = jiffies;

exit:
  skb = netdev_alloc_skb(dev, RX_ALLOC_SIZE);
  if (!skb)
   goto out;

  skb_reserve(skb, RX_SKB_HEADROOM);
  priv->rx_skb[priv->cur_rx] = skb;
  priv->irq_rxskb[priv->cur_rx] = 1;
  priv->cur_rx++;

  if (priv->cur_rx >= RX_RING_SIZE)
   priv->cur_rx = 0;
  count++;
 }
out:
 return count;
}
