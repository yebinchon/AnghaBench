
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tty_struct {int dummy; } ;
struct hci_uart {int proto_lock; TYPE_1__* proto; int flags; int * tx_skb; struct tty_struct* tty; } ;
struct hci_dev {int dummy; } ;
struct TYPE_2__ {int (* flush ) (struct hci_uart*) ;} ;


 int BT_DBG (char*,struct hci_dev*,struct tty_struct*) ;
 int HCI_UART_PROTO_READY ;
 struct hci_uart* hci_get_drvdata (struct hci_dev*) ;
 int kfree_skb (int *) ;
 int percpu_down_read (int *) ;
 int percpu_up_read (int *) ;
 int stub1 (struct hci_uart*) ;
 scalar_t__ test_bit (int ,int *) ;
 int tty_driver_flush_buffer (struct tty_struct*) ;
 int tty_ldisc_flush (struct tty_struct*) ;

__attribute__((used)) static int hci_uart_flush(struct hci_dev *hdev)
{
 struct hci_uart *hu = hci_get_drvdata(hdev);
 struct tty_struct *tty = hu->tty;

 BT_DBG("hdev %p tty %p", hdev, tty);

 if (hu->tx_skb) {
  kfree_skb(hu->tx_skb); hu->tx_skb = ((void*)0);
 }


 tty_ldisc_flush(tty);
 tty_driver_flush_buffer(tty);

 percpu_down_read(&hu->proto_lock);

 if (test_bit(HCI_UART_PROTO_READY, &hu->flags))
  hu->proto->flush(hu);

 percpu_up_read(&hu->proto_lock);

 return 0;
}
