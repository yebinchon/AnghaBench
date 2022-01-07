
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hci_uart {int init_ready; int hdev_flags; } ;


 int EALREADY ;
 int HCI_UART_INIT_PENDING ;
 int schedule_work (int *) ;
 int test_bit (int ,int *) ;

int hci_uart_init_ready(struct hci_uart *hu)
{
 if (!test_bit(HCI_UART_INIT_PENDING, &hu->hdev_flags))
  return -EALREADY;

 schedule_work(&hu->init_ready);

 return 0;
}
