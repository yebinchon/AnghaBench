
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hci_uart {struct ag6xx_data* priv; } ;
struct ag6xx_data {int rx_skb; int txq; } ;


 int BT_DBG (char*,struct hci_uart*) ;
 int kfree (struct ag6xx_data*) ;
 int kfree_skb (int ) ;
 int skb_queue_purge (int *) ;

__attribute__((used)) static int ag6xx_close(struct hci_uart *hu)
{
 struct ag6xx_data *ag6xx = hu->priv;

 BT_DBG("hu %p", hu);

 skb_queue_purge(&ag6xx->txq);
 kfree_skb(ag6xx->rx_skb);
 kfree(ag6xx);

 hu->priv = ((void*)0);
 return 0;
}
