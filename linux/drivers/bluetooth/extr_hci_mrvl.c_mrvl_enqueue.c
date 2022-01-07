
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
struct mrvl_data {int txq; } ;
struct hci_uart {struct mrvl_data* priv; } ;


 int skb_queue_tail (int *,struct sk_buff*) ;

__attribute__((used)) static int mrvl_enqueue(struct hci_uart *hu, struct sk_buff *skb)
{
 struct mrvl_data *mrvl = hu->priv;

 skb_queue_tail(&mrvl->txq, skb);
 return 0;
}
