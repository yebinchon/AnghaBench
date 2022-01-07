
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mrvl_data {int rawq; int txq; } ;
struct hci_uart {struct mrvl_data* priv; } ;


 int BT_DBG (char*,struct hci_uart*) ;
 int skb_queue_purge (int *) ;

__attribute__((used)) static int mrvl_flush(struct hci_uart *hu)
{
 struct mrvl_data *mrvl = hu->priv;

 BT_DBG("hu %p", hu);

 skb_queue_purge(&mrvl->txq);
 skb_queue_purge(&mrvl->rawq);

 return 0;
}
