
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mrvl_data {int rx_skb; int rawq; int txq; } ;
struct hci_uart {struct mrvl_data* priv; scalar_t__ serdev; } ;


 int BT_DBG (char*,struct hci_uart*) ;
 int kfree (struct mrvl_data*) ;
 int kfree_skb (int ) ;
 int serdev_device_close (scalar_t__) ;
 int skb_queue_purge (int *) ;

__attribute__((used)) static int mrvl_close(struct hci_uart *hu)
{
 struct mrvl_data *mrvl = hu->priv;

 BT_DBG("hu %p", hu);

 if (hu->serdev)
  serdev_device_close(hu->serdev);

 skb_queue_purge(&mrvl->txq);
 skb_queue_purge(&mrvl->rawq);
 kfree_skb(mrvl->rx_skb);
 kfree(mrvl);

 hu->priv = ((void*)0);
 return 0;
}
