
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sk_buff {int dummy; } ;
struct mrvl_data {int rawq; int txq; } ;
struct hci_uart {struct mrvl_data* priv; } ;
struct TYPE_2__ {int pkt_type; } ;


 TYPE_1__* bt_cb (struct sk_buff*) ;
 int memcpy (int ,int *,int) ;
 struct sk_buff* skb_dequeue (int *) ;
 int skb_push (struct sk_buff*,int) ;

__attribute__((used)) static struct sk_buff *mrvl_dequeue(struct hci_uart *hu)
{
 struct mrvl_data *mrvl = hu->priv;
 struct sk_buff *skb;

 skb = skb_dequeue(&mrvl->txq);
 if (!skb) {

  skb = skb_dequeue(&mrvl->rawq);
 } else {

  memcpy(skb_push(skb, 1), &bt_cb(skb)->pkt_type, 1);
 }

 return skb;
}
