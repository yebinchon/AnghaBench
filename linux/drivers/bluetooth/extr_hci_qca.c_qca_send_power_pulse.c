
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct hci_uart {int serdev; int hdev; } ;
typedef int cmd ;


 int CMD_TRANS_TIMEOUT_MS ;
 int QCA_WCN3990_POWEROFF_PULSE ;
 int QCA_WCN3990_POWERON_PULSE ;
 int bt_dev_dbg (int ,char*,int ) ;
 int bt_dev_err (int ,char*,int ) ;
 int hci_uart_set_flow_control (struct hci_uart*,int) ;
 int msecs_to_jiffies (int ) ;
 int msleep (int) ;
 int serdev_device_wait_until_sent (int ,int) ;
 int serdev_device_write_buf (int ,int *,int) ;
 int serdev_device_write_flush (int ) ;

__attribute__((used)) static int qca_send_power_pulse(struct hci_uart *hu, bool on)
{
 int ret;
 int timeout = msecs_to_jiffies(CMD_TRANS_TIMEOUT_MS);
 u8 cmd = on ? QCA_WCN3990_POWERON_PULSE : QCA_WCN3990_POWEROFF_PULSE;
 bt_dev_dbg(hu->hdev, "sending power pulse %02x to controller", cmd);

 serdev_device_write_flush(hu->serdev);
 hci_uart_set_flow_control(hu, 1);
 ret = serdev_device_write_buf(hu->serdev, &cmd, sizeof(cmd));
 if (ret < 0) {
  bt_dev_err(hu->hdev, "failed to send power pulse %02x", cmd);
  return ret;
 }

 serdev_device_wait_until_sent(hu->serdev, timeout);
 hci_uart_set_flow_control(hu, 0);


 if (on)
  msleep(100);
 else
  msleep(10);

 return 0;
}
