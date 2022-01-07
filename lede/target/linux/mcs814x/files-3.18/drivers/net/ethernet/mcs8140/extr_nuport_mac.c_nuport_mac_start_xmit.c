
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sk_buff {scalar_t__ len; } ;
struct nuport_mac_priv {size_t cur_tx; int* valid_txskb; int tx_full; int lock; struct sk_buff** tx_skb; scalar_t__ first_pkt; } ;
struct TYPE_2__ {int tx_packets; int tx_bytes; } ;
struct net_device {int trans_start; TYPE_1__ stats; } ;


 int NETDEV_TX_BUSY ;
 int NETDEV_TX_OK ;
 size_t TX_RING_SIZE ;
 int jiffies ;
 int netdev_err (struct net_device*,char*) ;
 struct nuport_mac_priv* netdev_priv (struct net_device*) ;
 int netdev_warn (struct net_device*,char*) ;
 scalar_t__ netif_queue_stopped (struct net_device*) ;
 int netif_start_queue (struct net_device*) ;
 int netif_stop_queue (struct net_device*) ;
 int nuport_mac_start_tx_dma (struct nuport_mac_priv*,struct sk_buff*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int nuport_mac_start_xmit(struct sk_buff *skb, struct net_device *dev)
{
 unsigned long flags;
 struct nuport_mac_priv *priv = netdev_priv(dev);
 int ret;

 if (netif_queue_stopped(dev)) {
  netdev_warn(dev, "netif queue was stopped, restarting\n");
  netif_start_queue(dev);
 }

 spin_lock_irqsave(&priv->lock, flags);
 if (priv->first_pkt) {
  ret = nuport_mac_start_tx_dma(priv, skb);
  if (ret) {
   netif_stop_queue(dev);
   spin_unlock_irqrestore(&priv->lock, flags);
   netdev_err(dev, "transmit path busy\n");
   return NETDEV_TX_BUSY;
  }
  priv->first_pkt = 0;
 }

 priv->tx_skb[priv->cur_tx] = skb;
 dev->stats.tx_bytes += skb->len;
 dev->stats.tx_packets++;
 priv->valid_txskb[priv->cur_tx] = 1;
 priv->cur_tx++;
 dev->trans_start = jiffies;

 if (priv->cur_tx >= TX_RING_SIZE)
  priv->cur_tx = 0;

 spin_unlock_irqrestore(&priv->lock, flags);

 if (priv->valid_txskb[priv->cur_tx]) {
  priv->tx_full = 1;
  netdev_err(dev, "stopping queue\n");
  netif_stop_queue(dev);
 }

 return NETDEV_TX_OK;
}
