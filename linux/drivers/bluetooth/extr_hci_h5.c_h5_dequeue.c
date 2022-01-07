
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sk_buff {unsigned char const* data; int len; } ;
struct hci_uart {struct h5* priv; } ;
struct TYPE_2__ {scalar_t__ qlen; int lock; } ;
struct h5 {scalar_t__ sleep; scalar_t__ tx_win; int flags; TYPE_1__ unack; int rel; int timer; int unrel; } ;


 int BT_DBG (char*) ;
 int BT_ERR (char*) ;
 scalar_t__ H5_ACK_TIMEOUT ;
 scalar_t__ H5_AWAKE ;
 int H5_TX_ACK_REQ ;
 scalar_t__ H5_WAKING_UP ;
 int HCI_3WIRE_ACK_PKT ;
 int HCI_3WIRE_LINK_PKT ;
 int HZ ;
 int SINGLE_DEPTH_NESTING ;
 int __skb_queue_tail (TYPE_1__*,struct sk_buff*) ;
 struct sk_buff* h5_prepare_pkt (struct hci_uart*,int ,unsigned char const*,int) ;
 int hci_skb_pkt_type (struct sk_buff*) ;
 scalar_t__ jiffies ;
 int kfree_skb (struct sk_buff*) ;
 int mod_timer (int *,scalar_t__) ;
 struct sk_buff* skb_dequeue (int *) ;
 int skb_queue_head (int *,struct sk_buff*) ;
 int spin_lock_irqsave_nested (int *,unsigned long,int ) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 scalar_t__ test_bit (int ,int *) ;

__attribute__((used)) static struct sk_buff *h5_dequeue(struct hci_uart *hu)
{
 struct h5 *h5 = hu->priv;
 unsigned long flags;
 struct sk_buff *skb, *nskb;

 if (h5->sleep != H5_AWAKE) {
  const unsigned char wakeup_req[] = { 0x05, 0xfa };

  if (h5->sleep == H5_WAKING_UP)
   return ((void*)0);

  h5->sleep = H5_WAKING_UP;
  BT_DBG("Sending wakeup request");

  mod_timer(&h5->timer, jiffies + HZ / 100);
  return h5_prepare_pkt(hu, HCI_3WIRE_LINK_PKT, wakeup_req, 2);
 }

 skb = skb_dequeue(&h5->unrel);
 if (skb) {
  nskb = h5_prepare_pkt(hu, hci_skb_pkt_type(skb),
          skb->data, skb->len);
  if (nskb) {
   kfree_skb(skb);
   return nskb;
  }

  skb_queue_head(&h5->unrel, skb);
  BT_ERR("Could not dequeue pkt because alloc_skb failed");
 }

 spin_lock_irqsave_nested(&h5->unack.lock, flags, SINGLE_DEPTH_NESTING);

 if (h5->unack.qlen >= h5->tx_win)
  goto unlock;

 skb = skb_dequeue(&h5->rel);
 if (skb) {
  nskb = h5_prepare_pkt(hu, hci_skb_pkt_type(skb),
          skb->data, skb->len);
  if (nskb) {
   __skb_queue_tail(&h5->unack, skb);
   mod_timer(&h5->timer, jiffies + H5_ACK_TIMEOUT);
   spin_unlock_irqrestore(&h5->unack.lock, flags);
   return nskb;
  }

  skb_queue_head(&h5->rel, skb);
  BT_ERR("Could not dequeue pkt because alloc_skb failed");
 }

unlock:
 spin_unlock_irqrestore(&h5->unack.lock, flags);

 if (test_bit(H5_TX_ACK_REQ, &h5->flags))
  return h5_prepare_pkt(hu, HCI_3WIRE_ACK_PKT, ((void*)0), 0);

 return ((void*)0);
}
