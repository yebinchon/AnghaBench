
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int len; } ;
struct hci_uart {struct h5* priv; } ;
struct h5 {scalar_t__ state; int unrel; int rel; } ;


 int BT_ERR (char*,...) ;
 scalar_t__ H5_ACTIVE ;



 int hci_skb_pkt_type (struct sk_buff*) ;
 int kfree_skb (struct sk_buff*) ;
 int skb_queue_tail (int *,struct sk_buff*) ;

__attribute__((used)) static int h5_enqueue(struct hci_uart *hu, struct sk_buff *skb)
{
 struct h5 *h5 = hu->priv;

 if (skb->len > 0xfff) {
  BT_ERR("Packet too long (%u bytes)", skb->len);
  kfree_skb(skb);
  return 0;
 }

 if (h5->state != H5_ACTIVE) {
  BT_ERR("Ignoring HCI data in non-active state");
  kfree_skb(skb);
  return 0;
 }

 switch (hci_skb_pkt_type(skb)) {
 case 130:
 case 129:
  skb_queue_tail(&h5->rel, skb);
  break;

 case 128:
  skb_queue_tail(&h5->unrel, skb);
  break;

 default:
  BT_ERR("Unknown packet type %u", hci_skb_pkt_type(skb));
  kfree_skb(skb);
  break;
 }

 return 0;
}
