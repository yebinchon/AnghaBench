
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct hci_uart {int serdev; TYPE_1__* proto; int write_work; int flags; struct hci_dev* hdev; } ;
struct hci_dev {int dummy; } ;
struct TYPE_2__ {int (* close ) (struct hci_uart*) ;} ;


 int HCI_UART_PROTO_READY ;
 int cancel_work_sync (int *) ;
 int clear_bit (int ,int *) ;
 int hci_free_dev (struct hci_dev*) ;
 int hci_unregister_dev (struct hci_dev*) ;
 int serdev_device_close (int ) ;
 int stub1 (struct hci_uart*) ;

void hci_uart_unregister_device(struct hci_uart *hu)
{
 struct hci_dev *hdev = hu->hdev;

 clear_bit(HCI_UART_PROTO_READY, &hu->flags);
 hci_unregister_dev(hdev);
 hci_free_dev(hdev);

 cancel_work_sync(&hu->write_work);

 hu->proto->close(hu);
 serdev_device_close(hu->serdev);
}
