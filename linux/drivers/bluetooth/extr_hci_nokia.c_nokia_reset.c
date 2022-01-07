
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct nokia_bt_dev {TYPE_1__* serdev; int reset; int wakeup_host; int wakeup_bt; } ;
struct hci_uart {struct nokia_bt_dev* priv; } ;
struct device {int dummy; } ;
struct TYPE_5__ {struct device dev; } ;


 int EPROTO ;
 int INIT_BAUD_RATE ;
 int dev_err (struct device*,char*,...) ;
 int gpiod_get_value_cansleep (int ) ;
 int gpiod_set_value_cansleep (int ,int) ;
 int msleep (int) ;
 int nokia_flow_control (TYPE_1__*,int) ;
 int serdev_device_set_baudrate (TYPE_1__*,int ) ;
 int serdev_device_wait_for_cts (TYPE_1__*,int,int) ;
 int serdev_device_write_flush (TYPE_1__*) ;

__attribute__((used)) static int nokia_reset(struct hci_uart *hu)
{
 struct nokia_bt_dev *btdev = hu->priv;
 struct device *dev = &btdev->serdev->dev;
 int err;


 gpiod_set_value_cansleep(btdev->reset, 1);
 gpiod_set_value_cansleep(btdev->wakeup_bt, 1);

 msleep(100);


 err = gpiod_get_value_cansleep(btdev->wakeup_host);
 if (err == 1) {
  dev_err(dev, "reset: host wakeup not low!");
  return -EPROTO;
 }


 serdev_device_write_flush(btdev->serdev);


 nokia_flow_control(btdev->serdev, 0);
 serdev_device_set_baudrate(btdev->serdev, INIT_BAUD_RATE);

 gpiod_set_value_cansleep(btdev->reset, 0);


 err = serdev_device_wait_for_cts(btdev->serdev, 1, 200);
 if (err < 0) {
  dev_err(dev, "CTS not received: %d", err);
  return err;
 }

 nokia_flow_control(btdev->serdev, 1);

 return 0;
}
