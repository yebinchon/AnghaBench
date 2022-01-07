
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hci_uart {struct bcm_data* priv; int hdev; scalar_t__ serdev; } ;
struct bcm_device {scalar_t__ irq; int dev; int * hu; } ;
struct bcm_data {int rx_skb; int txq; struct bcm_device* dev; } ;


 int CONFIG_PM ;
 scalar_t__ IS_ENABLED (int ) ;
 scalar_t__ bcm_device_exists (struct bcm_device*) ;
 int bcm_device_lock ;
 int bcm_gpio_set_power (struct bcm_device*,int) ;
 int bt_dev_dbg (int ,char*,struct hci_uart*) ;
 int bt_dev_err (int ,char*) ;
 int device_init_wakeup (int ,int) ;
 int devm_free_irq (int ,scalar_t__,struct bcm_device*) ;
 int kfree (struct bcm_data*) ;
 int kfree_skb (int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int pm_runtime_disable (int ) ;
 int pm_runtime_set_suspended (int ) ;
 struct bcm_device* serdev_device_get_drvdata (scalar_t__) ;
 int skb_queue_purge (int *) ;

__attribute__((used)) static int bcm_close(struct hci_uart *hu)
{
 struct bcm_data *bcm = hu->priv;
 struct bcm_device *bdev = ((void*)0);
 int err;

 bt_dev_dbg(hu->hdev, "hu %p", hu);


 mutex_lock(&bcm_device_lock);

 if (hu->serdev) {
  bdev = serdev_device_get_drvdata(hu->serdev);
 } else if (bcm_device_exists(bcm->dev)) {
  bdev = bcm->dev;



 }

 if (bdev) {
  if (IS_ENABLED(CONFIG_PM) && bdev->irq > 0) {
   devm_free_irq(bdev->dev, bdev->irq, bdev);
   device_init_wakeup(bdev->dev, 0);
   pm_runtime_disable(bdev->dev);
  }

  err = bcm_gpio_set_power(bdev, 0);
  if (err)
   bt_dev_err(hu->hdev, "Failed to power down");
  else
   pm_runtime_set_suspended(bdev->dev);
 }
 mutex_unlock(&bcm_device_lock);

 skb_queue_purge(&bcm->txq);
 kfree_skb(bcm->rx_skb);
 kfree(bcm);

 hu->priv = ((void*)0);
 return 0;
}
