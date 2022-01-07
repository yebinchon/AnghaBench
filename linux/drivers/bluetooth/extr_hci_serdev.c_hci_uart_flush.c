
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct hci_uart {TYPE_1__* proto; int flags; int serdev; int * tx_skb; } ;
struct hci_dev {int dummy; } ;
struct TYPE_2__ {int (* flush ) (struct hci_uart*) ;} ;


 int BT_DBG (char*,struct hci_dev*,int ) ;
 int HCI_UART_PROTO_READY ;
 struct hci_uart* hci_get_drvdata (struct hci_dev*) ;
 int kfree_skb (int *) ;
 int serdev_device_write_flush (int ) ;
 int stub1 (struct hci_uart*) ;
 scalar_t__ test_bit (int ,int *) ;

__attribute__((used)) static int hci_uart_flush(struct hci_dev *hdev)
{
 struct hci_uart *hu = hci_get_drvdata(hdev);

 BT_DBG("hdev %p serdev %p", hdev, hu->serdev);

 if (hu->tx_skb) {
  kfree_skb(hu->tx_skb); hu->tx_skb = ((void*)0);
 }


 serdev_device_write_flush(hu->serdev);

 if (test_bit(HCI_UART_PROTO_READY, &hu->flags))
  hu->proto->flush(hu);

 return 0;
}
