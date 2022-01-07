
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nokia_bt_dev {int * rx_skb; TYPE_1__* serdev; } ;
struct hci_uart {int hdev; int flags; struct nokia_bt_dev* priv; } ;
struct device {int dummy; } ;
struct TYPE_2__ {struct device dev; } ;


 int ARRAY_SIZE (int ) ;
 int EUNATCH ;
 int HCI_UART_REGISTERED ;
 scalar_t__ IS_ERR (int *) ;
 int PTR_ERR (int *) ;
 int dev_err (struct device*,char*,int) ;
 int * h4_recv_buf (int ,int *,void const*,int,int ,int ) ;
 int nokia_recv_pkts ;
 int test_bit (int ,int *) ;

__attribute__((used)) static int nokia_recv(struct hci_uart *hu, const void *data, int count)
{
 struct nokia_bt_dev *btdev = hu->priv;
 struct device *dev = &btdev->serdev->dev;
 int err;

 if (!test_bit(HCI_UART_REGISTERED, &hu->flags))
  return -EUNATCH;

 btdev->rx_skb = h4_recv_buf(hu->hdev, btdev->rx_skb, data, count,
      nokia_recv_pkts, ARRAY_SIZE(nokia_recv_pkts));
 if (IS_ERR(btdev->rx_skb)) {
  err = PTR_ERR(btdev->rx_skb);
  dev_err(dev, "Frame reassembly failed (%d)", err);
  btdev->rx_skb = ((void*)0);
  return err;
 }

 return count;
}
