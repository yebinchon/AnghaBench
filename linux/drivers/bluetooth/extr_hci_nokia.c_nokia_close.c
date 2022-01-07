
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nokia_bt_dev {int initialized; TYPE_1__* serdev; int wakeup_bt; int reset; int rx_skb; int txq; } ;
struct hci_uart {struct nokia_bt_dev* priv; } ;
struct device {int dummy; } ;
struct TYPE_2__ {struct device dev; } ;


 int dev_dbg (struct device*,char*) ;
 int gpiod_set_value (int ,int) ;
 int kfree_skb (int ) ;
 int pm_runtime_disable (struct device*) ;
 int skb_queue_purge (int *) ;

__attribute__((used)) static int nokia_close(struct hci_uart *hu)
{
 struct nokia_bt_dev *btdev = hu->priv;
 struct device *dev = &btdev->serdev->dev;

 dev_dbg(dev, "close device");

 btdev->initialized = 0;

 skb_queue_purge(&btdev->txq);

 kfree_skb(btdev->rx_skb);


 gpiod_set_value(btdev->reset, 1);
 gpiod_set_value(btdev->wakeup_bt, 0);

 pm_runtime_disable(&btdev->serdev->dev);

 return 0;
}
