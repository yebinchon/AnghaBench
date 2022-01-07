
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
struct qca_data {int txq; } ;
struct hci_uart {struct qca_data* priv; } ;


 struct sk_buff* skb_dequeue (int *) ;

__attribute__((used)) static struct sk_buff *qca_dequeue(struct hci_uart *hu)
{
 struct qca_data *qca = hu->priv;

 return skb_dequeue(&qca->txq);
}
