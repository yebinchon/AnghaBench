
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
struct hci_uart {struct bcm_data* priv; } ;
struct bcm_device {int dev; } ;
struct bcm_data {int txq; struct bcm_device* dev; } ;


 scalar_t__ bcm_device_exists (struct bcm_device*) ;
 int bcm_device_lock ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int pm_runtime_get_sync (int ) ;
 int pm_runtime_mark_last_busy (int ) ;
 int pm_runtime_put_autosuspend (int ) ;
 struct sk_buff* skb_dequeue (int *) ;

__attribute__((used)) static struct sk_buff *bcm_dequeue(struct hci_uart *hu)
{
 struct bcm_data *bcm = hu->priv;
 struct sk_buff *skb = ((void*)0);
 struct bcm_device *bdev = ((void*)0);

 mutex_lock(&bcm_device_lock);

 if (bcm_device_exists(bcm->dev)) {
  bdev = bcm->dev;
  pm_runtime_get_sync(bdev->dev);

 }

 skb = skb_dequeue(&bcm->txq);

 if (bdev) {
  pm_runtime_mark_last_busy(bdev->dev);
  pm_runtime_put_autosuspend(bdev->dev);
 }

 mutex_unlock(&bcm_device_lock);

 return skb;
}
