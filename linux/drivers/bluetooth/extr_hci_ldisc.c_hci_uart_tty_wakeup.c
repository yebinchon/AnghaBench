
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tty_struct {int flags; struct hci_uart* disc_data; } ;
struct hci_uart {int flags; struct tty_struct* tty; } ;


 int BT_DBG (char*) ;
 int HCI_UART_PROTO_READY ;
 int TTY_DO_WRITE_WAKEUP ;
 int clear_bit (int ,int *) ;
 int hci_uart_tx_wakeup (struct hci_uart*) ;
 scalar_t__ test_bit (int ,int *) ;

__attribute__((used)) static void hci_uart_tty_wakeup(struct tty_struct *tty)
{
 struct hci_uart *hu = tty->disc_data;

 BT_DBG("");

 if (!hu)
  return;

 clear_bit(TTY_DO_WRITE_WAKEUP, &tty->flags);

 if (tty != hu->tty)
  return;

 if (test_bit(HCI_UART_PROTO_READY, &hu->flags))
  hci_uart_tx_wakeup(hu);
}
