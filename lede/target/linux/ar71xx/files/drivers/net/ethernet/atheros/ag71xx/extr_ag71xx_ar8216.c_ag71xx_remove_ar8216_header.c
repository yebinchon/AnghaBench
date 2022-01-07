
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct sk_buff {int* data; } ;
struct ag71xx {int dummy; } ;


 int AR8216_HEADER_LEN ;
 int AR8216_PACKET_TYPE_MASK ;

 int EINVAL ;
 int skb_pull (struct sk_buff*,int ) ;

int ag71xx_remove_ar8216_header(struct ag71xx *ag, struct sk_buff *skb,
    int pktlen)
{
 u8 type;

 type = skb->data[1] & AR8216_PACKET_TYPE_MASK;
 switch (type) {
 case 128:
  break;

 default:
  return -EINVAL;
 }

 skb_pull(skb, AR8216_HEADER_LEN);
 return 0;
}
