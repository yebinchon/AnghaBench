
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int len; } ;
struct hci_uart {struct bcsp_struct* priv; } ;
struct bcsp_struct {int unrel; int rel; } ;


 int BT_ERR (char*) ;



 int hci_skb_pkt_type (struct sk_buff*) ;
 int kfree_skb (struct sk_buff*) ;
 int skb_queue_tail (int *,struct sk_buff*) ;

__attribute__((used)) static int bcsp_enqueue(struct hci_uart *hu, struct sk_buff *skb)
{
 struct bcsp_struct *bcsp = hu->priv;

 if (skb->len > 0xFFF) {
  BT_ERR("Packet too long");
  kfree_skb(skb);
  return 0;
 }

 switch (hci_skb_pkt_type(skb)) {
 case 130:
 case 129:
  skb_queue_tail(&bcsp->rel, skb);
  break;

 case 128:
  skb_queue_tail(&bcsp->unrel, skb);
  break;

 default:
  BT_ERR("Unknown packet type");
  kfree_skb(skb);
  break;
 }

 return 0;
}
