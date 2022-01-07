
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
struct hci_uart {struct ath_struct* priv; } ;
struct ath_struct {int txq; } ;


 struct sk_buff* skb_dequeue (int *) ;

__attribute__((used)) static struct sk_buff *ath_dequeue(struct hci_uart *hu)
{
 struct ath_struct *ath = hu->priv;

 return skb_dequeue(&ath->txq);
}
