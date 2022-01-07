
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct hci_uart {int hdev; int flags; struct bcm_data* priv; } ;
struct bcm_data {TYPE_1__* dev; int * rx_skb; } ;
struct TYPE_2__ {int dev; } ;


 int ARRAY_SIZE (int ) ;
 int EUNATCH ;
 int HCI_UART_REGISTERED ;
 scalar_t__ IS_ERR (int *) ;
 int PTR_ERR (int *) ;
 scalar_t__ bcm_device_exists (TYPE_1__*) ;
 int bcm_device_lock ;
 int bcm_recv_pkts ;
 int bt_dev_err (int ,char*,int) ;
 int * h4_recv_buf (int ,int *,void const*,int,int ,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int pm_runtime_get (int ) ;
 int pm_runtime_mark_last_busy (int ) ;
 int pm_runtime_put_autosuspend (int ) ;
 int test_bit (int ,int *) ;

__attribute__((used)) static int bcm_recv(struct hci_uart *hu, const void *data, int count)
{
 struct bcm_data *bcm = hu->priv;

 if (!test_bit(HCI_UART_REGISTERED, &hu->flags))
  return -EUNATCH;

 bcm->rx_skb = h4_recv_buf(hu->hdev, bcm->rx_skb, data, count,
      bcm_recv_pkts, ARRAY_SIZE(bcm_recv_pkts));
 if (IS_ERR(bcm->rx_skb)) {
  int err = PTR_ERR(bcm->rx_skb);
  bt_dev_err(hu->hdev, "Frame reassembly failed (%d)", err);
  bcm->rx_skb = ((void*)0);
  return err;
 } else if (!bcm->rx_skb) {

  mutex_lock(&bcm_device_lock);
  if (bcm->dev && bcm_device_exists(bcm->dev)) {
   pm_runtime_get(bcm->dev->dev);
   pm_runtime_mark_last_busy(bcm->dev->dev);
   pm_runtime_put_autosuspend(bcm->dev->dev);
  }
  mutex_unlock(&bcm_device_lock);
 }

 return count;
}
