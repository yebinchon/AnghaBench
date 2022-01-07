
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dev; } ;


 unsigned short eth_type_trans (struct sk_buff*,int ) ;

unsigned short eth_protocol(struct sk_buff *skb)
{
 return eth_type_trans(skb, skb->dev);
}
