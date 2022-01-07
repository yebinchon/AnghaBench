
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hci_uart {unsigned long hdev_flags; } ;


 unsigned long BIT (int ) ;
 int EINVAL ;
 int HCI_UART_CREATE_AMP ;
 int HCI_UART_EXT_CONFIG ;
 int HCI_UART_INIT_PENDING ;
 int HCI_UART_RAW_DEVICE ;
 int HCI_UART_RESET_ON_INIT ;
 int HCI_UART_VND_DETECT ;

__attribute__((used)) static int hci_uart_set_flags(struct hci_uart *hu, unsigned long flags)
{
 unsigned long valid_flags = BIT(HCI_UART_RAW_DEVICE) |
        BIT(HCI_UART_RESET_ON_INIT) |
        BIT(HCI_UART_CREATE_AMP) |
        BIT(HCI_UART_INIT_PENDING) |
        BIT(HCI_UART_EXT_CONFIG) |
        BIT(HCI_UART_VND_DETECT);

 if (flags & ~valid_flags)
  return -EINVAL;

 hu->hdev_flags = flags;

 return 0;
}
