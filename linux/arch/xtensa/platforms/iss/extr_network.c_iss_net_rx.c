
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct sk_buff {scalar_t__ len; int protocol; struct net_device* dev; } ;
struct net_device {scalar_t__ mtu; } ;
struct TYPE_4__ {int rx_packets; int rx_bytes; int rx_dropped; } ;
struct TYPE_3__ {scalar_t__ (* poll ) (struct iss_net_private*) ;int (* read ) (struct iss_net_private*,struct sk_buff**) ;int (* protocol ) (struct sk_buff*) ;} ;
struct iss_net_private {TYPE_2__ stats; TYPE_1__ tp; } ;


 scalar_t__ ETH_HEADER_OTHER ;
 struct sk_buff* dev_alloc_skb (scalar_t__) ;
 int kfree_skb (struct sk_buff*) ;
 struct iss_net_private* netdev_priv (struct net_device*) ;
 int netif_rx_ni (struct sk_buff*) ;
 int skb_put (struct sk_buff*,int) ;
 int skb_reserve (struct sk_buff*,int) ;
 int skb_reset_mac_header (struct sk_buff*) ;
 int skb_trim (struct sk_buff*,int) ;
 scalar_t__ stub1 (struct iss_net_private*) ;
 int stub2 (struct iss_net_private*,struct sk_buff**) ;
 int stub3 (struct sk_buff*) ;

__attribute__((used)) static int iss_net_rx(struct net_device *dev)
{
 struct iss_net_private *lp = netdev_priv(dev);
 int pkt_len;
 struct sk_buff *skb;



 if (lp->tp.poll(lp) == 0)
  return 0;



 skb = dev_alloc_skb(dev->mtu + 2 + ETH_HEADER_OTHER);
 if (skb == ((void*)0)) {
  lp->stats.rx_dropped++;
  return 0;
 }

 skb_reserve(skb, 2);



 skb->dev = dev;
 skb_reset_mac_header(skb);
 pkt_len = lp->tp.read(lp, &skb);
 skb_put(skb, pkt_len);

 if (pkt_len > 0) {
  skb_trim(skb, pkt_len);
  skb->protocol = lp->tp.protocol(skb);

  lp->stats.rx_bytes += skb->len;
  lp->stats.rx_packets++;
  netif_rx_ni(skb);
  return pkt_len;
 }
 kfree_skb(skb);
 return pkt_len;
}
