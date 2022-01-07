
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u8 ;
struct tty_struct {struct hci_uart* disc_data; } ;
struct hci_uart {TYPE_3__* hdev; int proto_lock; TYPE_1__* proto; int flags; struct tty_struct* tty; } ;
struct TYPE_5__ {int byte_rx; } ;
struct TYPE_6__ {TYPE_2__ stat; } ;
struct TYPE_4__ {int (* recv ) (struct hci_uart*,int const*,int) ;} ;


 int HCI_UART_PROTO_READY ;
 int percpu_down_read (int *) ;
 int percpu_up_read (int *) ;
 int stub1 (struct hci_uart*,int const*,int) ;
 int test_bit (int ,int *) ;
 int tty_unthrottle (struct tty_struct*) ;

__attribute__((used)) static void hci_uart_tty_receive(struct tty_struct *tty, const u8 *data,
     char *flags, int count)
{
 struct hci_uart *hu = tty->disc_data;

 if (!hu || tty != hu->tty)
  return;

 percpu_down_read(&hu->proto_lock);

 if (!test_bit(HCI_UART_PROTO_READY, &hu->flags)) {
  percpu_up_read(&hu->proto_lock);
  return;
 }




 hu->proto->recv(hu, data, count);
 percpu_up_read(&hu->proto_lock);

 if (hu->hdev)
  hu->hdev->stat.byte_rx += count;

 tty_unthrottle(tty);
}
