
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {scalar_t__ protocol; struct net_device* dev; } ;
struct net_device {int rx_handler_data; } ;
typedef int rx_handler_result_t ;


 int ETH_HLEN ;
 int ETH_P_PAE ;
 int RX_HANDLER_CONSUMED ;
 int RX_HANDLER_PASS ;
 int dev_queue_xmit (struct sk_buff*) ;
 scalar_t__ htons (int ) ;
 struct net_device* rcu_dereference (int ) ;
 int skb_forward_csum (struct sk_buff*) ;
 int skb_push (struct sk_buff*,int ) ;

rx_handler_result_t trelay_handle_frame(struct sk_buff **pskb)
{
 struct net_device *dev;
 struct sk_buff *skb = *pskb;

 dev = rcu_dereference(skb->dev->rx_handler_data);
 if (!dev)
  return RX_HANDLER_PASS;

 if (skb->protocol == htons(ETH_P_PAE))
  return RX_HANDLER_PASS;

 skb_push(skb, ETH_HLEN);
 skb->dev = dev;
 skb_forward_csum(skb);
 dev_queue_xmit(skb);

 return RX_HANDLER_CONSUMED;
}
