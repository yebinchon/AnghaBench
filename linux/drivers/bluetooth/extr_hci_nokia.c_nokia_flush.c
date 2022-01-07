
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nokia_bt_dev {int txq; TYPE_1__* serdev; } ;
struct hci_uart {struct nokia_bt_dev* priv; } ;
struct TYPE_2__ {int dev; } ;


 int dev_dbg (int *,char*) ;
 int skb_queue_purge (int *) ;

__attribute__((used)) static int nokia_flush(struct hci_uart *hu)
{
 struct nokia_bt_dev *btdev = hu->priv;

 dev_dbg(&btdev->serdev->dev, "flush device");

 skb_queue_purge(&btdev->txq);

 return 0;
}
