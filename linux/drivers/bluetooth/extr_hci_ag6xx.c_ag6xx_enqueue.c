
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
struct hci_uart {struct ag6xx_data* priv; } ;
struct ag6xx_data {int txq; } ;


 int skb_queue_tail (int *,struct sk_buff*) ;

__attribute__((used)) static int ag6xx_enqueue(struct hci_uart *hu, struct sk_buff *skb)
{
 struct ag6xx_data *ag6xx = hu->priv;

 skb_queue_tail(&ag6xx->txq, skb);
 return 0;
}
