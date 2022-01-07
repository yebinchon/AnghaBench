
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sk_buff {int dummy; } ;
struct nokia_bt_dev {int tx_enabled; int wakeup_bt; TYPE_1__* serdev; int initialized; int txq; } ;
struct hci_uart {struct nokia_bt_dev* priv; } ;
struct device {int dummy; } ;
struct TYPE_2__ {struct device dev; } ;


 int gpiod_set_value_cansleep (int ,int) ;
 int pm_runtime_get_sync (struct device*) ;
 int pm_runtime_put (struct device*) ;
 int serdev_device_wait_until_sent (TYPE_1__*,int ) ;
 struct sk_buff* skb_dequeue (int *) ;

__attribute__((used)) static struct sk_buff *nokia_dequeue(struct hci_uart *hu)
{
 struct nokia_bt_dev *btdev = hu->priv;
 struct device *dev = &btdev->serdev->dev;
 struct sk_buff *result = skb_dequeue(&btdev->txq);

 if (!btdev->initialized)
  return result;

 if (btdev->tx_enabled == !!result)
  return result;

 if (result) {
  pm_runtime_get_sync(dev);
  gpiod_set_value_cansleep(btdev->wakeup_bt, 1);
 } else {
  serdev_device_wait_until_sent(btdev->serdev, 0);
  gpiod_set_value_cansleep(btdev->wakeup_bt, 0);
  pm_runtime_put(dev);
 }

 btdev->tx_enabled = !!result;

 return result;
}
