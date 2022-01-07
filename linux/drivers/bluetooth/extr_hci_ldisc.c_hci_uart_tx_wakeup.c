
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hci_uart {int proto_lock; int write_work; int tx_state; int flags; } ;


 int BT_DBG (char*) ;
 int HCI_UART_PROTO_READY ;
 int HCI_UART_SENDING ;
 int HCI_UART_TX_WAKEUP ;
 int percpu_down_read_trylock (int *) ;
 int percpu_up_read (int *) ;
 int schedule_work (int *) ;
 int set_bit (int ,int *) ;
 scalar_t__ test_and_set_bit (int ,int *) ;
 int test_bit (int ,int *) ;

int hci_uart_tx_wakeup(struct hci_uart *hu)
{






 if (!percpu_down_read_trylock(&hu->proto_lock))
  return 0;

 if (!test_bit(HCI_UART_PROTO_READY, &hu->flags))
  goto no_schedule;

 if (test_and_set_bit(HCI_UART_SENDING, &hu->tx_state)) {
  set_bit(HCI_UART_TX_WAKEUP, &hu->tx_state);
  goto no_schedule;
 }

 BT_DBG("");

 schedule_work(&hu->write_work);

no_schedule:
 percpu_up_read(&hu->proto_lock);

 return 0;
}
