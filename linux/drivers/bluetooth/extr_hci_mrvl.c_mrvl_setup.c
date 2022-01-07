
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hci_uart {int hdev; scalar_t__ serdev; } ;


 int EINVAL ;
 int bt_dev_err (int ,char*) ;
 int hci_uart_set_baudrate (struct hci_uart*,int) ;
 int hci_uart_set_flow_control (struct hci_uart*,int) ;
 int hci_uart_wait_until_sent (struct hci_uart*) ;
 int mrvl_load_firmware (int ,char*) ;
 int serdev_device_set_baudrate (scalar_t__,int) ;

__attribute__((used)) static int mrvl_setup(struct hci_uart *hu)
{
 int err;

 hci_uart_set_flow_control(hu, 1);

 err = mrvl_load_firmware(hu->hdev, "mrvl/helper_uart_3000000.bin");
 if (err) {
  bt_dev_err(hu->hdev, "Unable to download firmware helper");
  return -EINVAL;
 }


 hci_uart_wait_until_sent(hu);

 if (hu->serdev)
  serdev_device_set_baudrate(hu->serdev, 3000000);
 else
  hci_uart_set_baudrate(hu, 3000000);

 hci_uart_set_flow_control(hu, 0);

 err = mrvl_load_firmware(hu->hdev, "mrvl/uart8897_bt.bin");
 if (err)
  return err;

 return 0;
}
