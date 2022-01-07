
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tty_struct {struct hci_uart* disc_data; } ;
struct hci_uart {int proto_lock; int flags; TYPE_1__* proto; int write_work; struct hci_dev* hdev; } ;
struct hci_dev {int dummy; } ;
struct TYPE_2__ {int (* close ) (struct hci_uart*) ;} ;


 int BT_DBG (char*,struct tty_struct*) ;
 int HCI_UART_PROTO_READY ;
 int HCI_UART_PROTO_SET ;
 int HCI_UART_REGISTERED ;
 int cancel_work_sync (int *) ;
 int clear_bit (int ,int *) ;
 int hci_free_dev (struct hci_dev*) ;
 int hci_uart_close (struct hci_dev*) ;
 int hci_unregister_dev (struct hci_dev*) ;
 int kfree (struct hci_uart*) ;
 int percpu_down_write (int *) ;
 int percpu_free_rwsem (int *) ;
 int percpu_up_write (int *) ;
 int stub1 (struct hci_uart*) ;
 scalar_t__ test_bit (int ,int *) ;

__attribute__((used)) static void hci_uart_tty_close(struct tty_struct *tty)
{
 struct hci_uart *hu = tty->disc_data;
 struct hci_dev *hdev;

 BT_DBG("tty %p", tty);


 tty->disc_data = ((void*)0);

 if (!hu)
  return;

 hdev = hu->hdev;
 if (hdev)
  hci_uart_close(hdev);

 if (test_bit(HCI_UART_PROTO_READY, &hu->flags)) {
  percpu_down_write(&hu->proto_lock);
  clear_bit(HCI_UART_PROTO_READY, &hu->flags);
  percpu_up_write(&hu->proto_lock);

  cancel_work_sync(&hu->write_work);

  if (hdev) {
   if (test_bit(HCI_UART_REGISTERED, &hu->flags))
    hci_unregister_dev(hdev);
   hci_free_dev(hdev);
  }
  hu->proto->close(hu);
 }
 clear_bit(HCI_UART_PROTO_SET, &hu->flags);

 percpu_free_rwsem(&hu->proto_lock);

 kfree(hu);
}
