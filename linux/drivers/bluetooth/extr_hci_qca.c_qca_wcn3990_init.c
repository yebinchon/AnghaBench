
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct qca_serdev {TYPE_1__* bt_power; } ;
struct hci_uart {int hdev; int serdev; } ;
struct TYPE_2__ {int vregs_on; } ;


 int QCA_INIT_SPEED ;
 int bt_dev_err (int ,char*) ;
 int hci_uart_set_flow_control (struct hci_uart*,int) ;
 int host_set_baudrate (struct hci_uart*,int) ;
 int qca_power_setup (struct hci_uart*,int) ;
 int qca_send_power_pulse (struct hci_uart*,int) ;
 int qca_set_speed (struct hci_uart*,int ) ;
 int serdev_device_close (int ) ;
 struct qca_serdev* serdev_device_get_drvdata (int ) ;
 int serdev_device_open (int ) ;

__attribute__((used)) static int qca_wcn3990_init(struct hci_uart *hu)
{
 struct qca_serdev *qcadev;
 int ret;




 qcadev = serdev_device_get_drvdata(hu->serdev);
 if (!qcadev->bt_power->vregs_on) {
  serdev_device_close(hu->serdev);
  ret = qca_power_setup(hu, 1);
  if (ret)
   return ret;

  ret = serdev_device_open(hu->serdev);
  if (ret) {
   bt_dev_err(hu->hdev, "failed to open port");
   return ret;
  }
 }


 host_set_baudrate(hu, 2400);
 ret = qca_send_power_pulse(hu, 0);
 if (ret)
  return ret;

 qca_set_speed(hu, QCA_INIT_SPEED);
 ret = qca_send_power_pulse(hu, 1);
 if (ret)
  return ret;






 serdev_device_close(hu->serdev);
 ret = serdev_device_open(hu->serdev);
 if (ret) {
  bt_dev_err(hu->hdev, "failed to open port");
  return ret;
 }

 hci_uart_set_flow_control(hu, 0);

 return 0;
}
