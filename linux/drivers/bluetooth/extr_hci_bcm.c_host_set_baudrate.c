
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hci_uart {scalar_t__ serdev; } ;


 int hci_uart_set_baudrate (struct hci_uart*,unsigned int) ;
 int serdev_device_set_baudrate (scalar_t__,unsigned int) ;

__attribute__((used)) static inline void host_set_baudrate(struct hci_uart *hu, unsigned int speed)
{
 if (hu->serdev)
  serdev_device_set_baudrate(hu->serdev, speed);
 else
  hci_uart_set_baudrate(hu, speed);
}
