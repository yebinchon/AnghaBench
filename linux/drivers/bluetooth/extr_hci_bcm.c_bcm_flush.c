
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hci_uart {int hdev; struct bcm_data* priv; } ;
struct bcm_data {int txq; } ;


 int bt_dev_dbg (int ,char*,struct hci_uart*) ;
 int skb_queue_purge (int *) ;

__attribute__((used)) static int bcm_flush(struct hci_uart *hu)
{
 struct bcm_data *bcm = hu->priv;

 bt_dev_dbg(hu->hdev, "hu %p", hu);

 skb_queue_purge(&bcm->txq);

 return 0;
}
