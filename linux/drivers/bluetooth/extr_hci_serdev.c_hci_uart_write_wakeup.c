
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct serdev_device {int dummy; } ;
struct hci_uart {int flags; struct serdev_device* serdev; } ;


 int BT_DBG (char*) ;
 int HCI_UART_PROTO_READY ;
 int WARN_ON (int) ;
 int hci_uart_tx_wakeup (struct hci_uart*) ;
 struct hci_uart* serdev_device_get_drvdata (struct serdev_device*) ;
 scalar_t__ test_bit (int ,int *) ;

__attribute__((used)) static void hci_uart_write_wakeup(struct serdev_device *serdev)
{
 struct hci_uart *hu = serdev_device_get_drvdata(serdev);

 BT_DBG("");

 if (!hu || serdev != hu->serdev) {
  WARN_ON(1);
  return;
 }

 if (test_bit(HCI_UART_PROTO_READY, &hu->flags))
  hci_uart_tx_wakeup(hu);
}
