
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sk_buff {int len; } ;
struct nokia_bt_dev {int txq; } ;
struct hci_uart {struct nokia_bt_dev* priv; } ;
struct TYPE_2__ {int pkt_type; } ;


 TYPE_1__* bt_cb (struct sk_buff*) ;
 int memcpy (int ,int *,int) ;
 int skb_pad (struct sk_buff*,int) ;
 int skb_push (struct sk_buff*,int) ;
 int skb_put_u8 (struct sk_buff*,int) ;
 int skb_queue_tail (int *,struct sk_buff*) ;

__attribute__((used)) static int nokia_enqueue(struct hci_uart *hu, struct sk_buff *skb)
{
 struct nokia_bt_dev *btdev = hu->priv;
 int err;


 memcpy(skb_push(skb, 1), &bt_cb(skb)->pkt_type, 1);


 if (skb->len % 2) {
  err = skb_pad(skb, 1);
  if (err)
   return err;
  skb_put_u8(skb, 0x00);
 }

 skb_queue_tail(&btdev->txq, skb);

 return 0;
}
