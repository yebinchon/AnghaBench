
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hci_uart {struct ag6xx_data* priv; } ;
struct ag6xx_data {int txq; } ;


 int BT_DBG (char*,struct hci_uart*) ;
 int skb_queue_purge (int *) ;

__attribute__((used)) static int ag6xx_flush(struct hci_uart *hu)
{
 struct ag6xx_data *ag6xx = hu->priv;

 BT_DBG("hu %p", hu);

 skb_queue_purge(&ag6xx->txq);
 return 0;
}
