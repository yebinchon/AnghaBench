
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct uml_net_private {int (* read ) (int ,struct sk_buff*,struct uml_net_private*) ;int (* protocol ) (struct sk_buff*) ;int fd; int max_packet; } ;
struct sk_buff {scalar_t__ len; int protocol; struct net_device* dev; } ;
struct TYPE_2__ {int rx_packets; int rx_bytes; int rx_dropped; } ;
struct net_device {TYPE_1__ stats; } ;


 struct sk_buff* dev_alloc_skb (int ) ;
 struct sk_buff* drop_skb ;
 int kfree_skb (struct sk_buff*) ;
 struct uml_net_private* netdev_priv (struct net_device*) ;
 int netif_rx (struct sk_buff*) ;
 int skb_put (struct sk_buff*,int ) ;
 int skb_reset_mac_header (struct sk_buff*) ;
 int skb_trim (struct sk_buff*,int) ;
 int stub1 (int ,struct sk_buff*,struct uml_net_private*) ;
 int stub2 (int ,struct sk_buff*,struct uml_net_private*) ;
 int stub3 (struct sk_buff*) ;

__attribute__((used)) static int uml_net_rx(struct net_device *dev)
{
 struct uml_net_private *lp = netdev_priv(dev);
 int pkt_len;
 struct sk_buff *skb;


 skb = dev_alloc_skb(lp->max_packet);
 if (skb == ((void*)0)) {
  drop_skb->dev = dev;

  (*lp->read)(lp->fd, drop_skb, lp);
  dev->stats.rx_dropped++;
  return 0;
 }

 skb->dev = dev;
 skb_put(skb, lp->max_packet);
 skb_reset_mac_header(skb);
 pkt_len = (*lp->read)(lp->fd, skb, lp);

 if (pkt_len > 0) {
  skb_trim(skb, pkt_len);
  skb->protocol = (*lp->protocol)(skb);

  dev->stats.rx_bytes += skb->len;
  dev->stats.rx_packets++;
  netif_rx(skb);
  return pkt_len;
 }

 kfree_skb(skb);
 return pkt_len;
}
