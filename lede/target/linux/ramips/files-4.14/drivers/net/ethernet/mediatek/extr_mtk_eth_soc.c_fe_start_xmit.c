
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int len; } ;
struct net_device_stats {int tx_bytes; int tx_packets; int tx_dropped; } ;
struct net_device {struct net_device_stats stats; } ;
struct fe_tx_ring {int dummy; } ;
struct fe_priv {struct fe_tx_ring tx_ring; } ;


 int NETDEV_TX_BUSY ;
 int NETDEV_TX_OK ;
 int fe_cal_txd_req (struct sk_buff*) ;
 int fe_empty_txd (struct fe_tx_ring*) ;
 scalar_t__ fe_skb_padto (struct sk_buff*,struct fe_priv*) ;
 scalar_t__ fe_tx_map_dma (struct sk_buff*,struct net_device*,int,struct fe_tx_ring*) ;
 struct fe_priv* netdev_priv (struct net_device*) ;
 int netif_err (struct fe_priv*,int ,struct net_device*,char*) ;
 int netif_stop_queue (struct net_device*) ;
 int netif_warn (struct fe_priv*,int ,struct net_device*,char*) ;
 int tx_err ;
 int tx_queued ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static int fe_start_xmit(struct sk_buff *skb, struct net_device *dev)
{
 struct fe_priv *priv = netdev_priv(dev);
 struct fe_tx_ring *ring = &priv->tx_ring;
 struct net_device_stats *stats = &dev->stats;
 int tx_num;
 int len = skb->len;

 if (fe_skb_padto(skb, priv)) {
  netif_warn(priv, tx_err, dev, "tx padding failed!\n");
  return NETDEV_TX_OK;
 }

 tx_num = fe_cal_txd_req(skb);
 if (unlikely(fe_empty_txd(ring) <= tx_num)) {
  netif_stop_queue(dev);
  netif_err(priv, tx_queued, dev,
     "Tx Ring full when queue awake!\n");
  return NETDEV_TX_BUSY;
 }

 if (fe_tx_map_dma(skb, dev, tx_num, ring) < 0) {
  stats->tx_dropped++;
 } else {
  stats->tx_packets++;
  stats->tx_bytes += len;
 }

 return NETDEV_TX_OK;
}
