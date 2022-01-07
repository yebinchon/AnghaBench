
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct tty_struct {struct hci_uart* disc_data; } ;
struct hci_uart {int hdev_flags; int flags; TYPE_2__* hdev; TYPE_1__* proto; } ;
struct file {int dummy; } ;
struct TYPE_4__ {int id; } ;
struct TYPE_3__ {int id; } ;


 int BT_DBG (char*) ;
 int EBADF ;
 int EBUSY ;
 int EUNATCH ;





 int HCI_UART_PROTO_SET ;
 int HCI_UART_REGISTERED ;
 int clear_bit (int ,int *) ;
 int hci_uart_set_flags (struct hci_uart*,unsigned long) ;
 int hci_uart_set_proto (struct hci_uart*,unsigned long) ;
 int n_tty_ioctl_helper (struct tty_struct*,struct file*,unsigned int,unsigned long) ;
 int test_and_set_bit (int ,int *) ;
 int test_bit (int ,int *) ;

__attribute__((used)) static int hci_uart_tty_ioctl(struct tty_struct *tty, struct file *file,
         unsigned int cmd, unsigned long arg)
{
 struct hci_uart *hu = tty->disc_data;
 int err = 0;

 BT_DBG("");


 if (!hu)
  return -EBADF;

 switch (cmd) {
 case 128:
  if (!test_and_set_bit(HCI_UART_PROTO_SET, &hu->flags)) {
   err = hci_uart_set_proto(hu, arg);
   if (err)
    clear_bit(HCI_UART_PROTO_SET, &hu->flags);
  } else
   err = -EBUSY;
  break;

 case 130:
  if (test_bit(HCI_UART_PROTO_SET, &hu->flags))
   err = hu->proto->id;
  else
   err = -EUNATCH;
  break;

 case 132:
  if (test_bit(HCI_UART_REGISTERED, &hu->flags))
   err = hu->hdev->id;
  else
   err = -EUNATCH;
  break;

 case 129:
  if (test_bit(HCI_UART_PROTO_SET, &hu->flags))
   err = -EBUSY;
  else
   err = hci_uart_set_flags(hu, arg);
  break;

 case 131:
  err = hu->hdev_flags;
  break;

 default:
  err = n_tty_ioctl_helper(tty, file, cmd, arg);
  break;
 }

 return err;
}
