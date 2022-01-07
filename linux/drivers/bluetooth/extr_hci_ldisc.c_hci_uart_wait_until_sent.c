
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hci_uart {int tx_state; } ;


 int HCI_UART_SENDING ;
 int TASK_INTERRUPTIBLE ;
 int msecs_to_jiffies (int) ;
 int wait_on_bit_timeout (int *,int ,int ,int ) ;

int hci_uart_wait_until_sent(struct hci_uart *hu)
{
 return wait_on_bit_timeout(&hu->tx_state, HCI_UART_SENDING,
       TASK_INTERRUPTIBLE,
       msecs_to_jiffies(2000));
}
