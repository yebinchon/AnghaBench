
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct device {int dummy; } ;
struct serdev_device {struct device dev; } ;
struct TYPE_2__ {int alignment; struct nokia_bt_dev* priv; struct serdev_device* serdev; } ;
struct nokia_bt_dev {TYPE_1__ hu; int txq; int sysclk_speed; struct clk* wakeup_bt; int wake_irq; struct clk* wakeup_host; struct clk* reset; struct serdev_device* serdev; } ;
struct clk {int dummy; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int GPIOD_IN ;
 int GPIOD_OUT_HIGH ;
 int GPIOD_OUT_LOW ;
 int IRQF_ONESHOT ;
 int IRQF_TRIGGER_FALLING ;
 int IRQF_TRIGGER_RISING ;
 scalar_t__ IS_ERR (struct clk*) ;
 int PTR_ERR (struct clk*) ;
 int clk_disable_unprepare (struct clk*) ;
 int clk_get_rate (struct clk*) ;
 int clk_prepare_enable (struct clk*) ;
 int dev_err (struct device*,char*,int) ;
 struct clk* devm_clk_get (struct device*,char*) ;
 void* devm_gpiod_get (struct device*,char*,int ) ;
 struct nokia_bt_dev* devm_kzalloc (struct device*,int,int ) ;
 int devm_request_threaded_irq (struct device*,int ,int *,int ,int,char*,struct nokia_bt_dev*) ;
 int gpiod_to_irq (struct clk*) ;
 int hci_uart_register_device (TYPE_1__*,int *) ;
 int nokia_proto ;
 int serdev_device_set_drvdata (struct serdev_device*,struct nokia_bt_dev*) ;
 int skb_queue_head_init (int *) ;
 int wakeup_handler ;

__attribute__((used)) static int nokia_bluetooth_serdev_probe(struct serdev_device *serdev)
{
 struct device *dev = &serdev->dev;
 struct nokia_bt_dev *btdev;
 struct clk *sysclk;
 int err = 0;

 btdev = devm_kzalloc(dev, sizeof(*btdev), GFP_KERNEL);
 if (!btdev)
  return -ENOMEM;

 btdev->hu.serdev = btdev->serdev = serdev;
 serdev_device_set_drvdata(serdev, btdev);

 btdev->reset = devm_gpiod_get(dev, "reset", GPIOD_OUT_HIGH);
 if (IS_ERR(btdev->reset)) {
  err = PTR_ERR(btdev->reset);
  dev_err(dev, "could not get reset gpio: %d", err);
  return err;
 }

 btdev->wakeup_host = devm_gpiod_get(dev, "host-wakeup", GPIOD_IN);
 if (IS_ERR(btdev->wakeup_host)) {
  err = PTR_ERR(btdev->wakeup_host);
  dev_err(dev, "could not get host wakeup gpio: %d", err);
  return err;
 }

 btdev->wake_irq = gpiod_to_irq(btdev->wakeup_host);

 err = devm_request_threaded_irq(dev, btdev->wake_irq, ((void*)0),
  wakeup_handler,
  IRQF_TRIGGER_RISING | IRQF_TRIGGER_FALLING | IRQF_ONESHOT,
  "wakeup", btdev);
 if (err) {
  dev_err(dev, "could request wakeup irq: %d", err);
  return err;
 }

 btdev->wakeup_bt = devm_gpiod_get(dev, "bluetooth-wakeup",
        GPIOD_OUT_LOW);
 if (IS_ERR(btdev->wakeup_bt)) {
  err = PTR_ERR(btdev->wakeup_bt);
  dev_err(dev, "could not get BT wakeup gpio: %d", err);
  return err;
 }

 sysclk = devm_clk_get(dev, "sysclk");
 if (IS_ERR(sysclk)) {
  err = PTR_ERR(sysclk);
  dev_err(dev, "could not get sysclk: %d", err);
  return err;
 }

 clk_prepare_enable(sysclk);
 btdev->sysclk_speed = clk_get_rate(sysclk);
 clk_disable_unprepare(sysclk);

 skb_queue_head_init(&btdev->txq);

 btdev->hu.priv = btdev;
 btdev->hu.alignment = 2;

 err = hci_uart_register_device(&btdev->hu, &nokia_proto);
 if (err) {
  dev_err(dev, "could not register bluetooth uart: %d", err);
  return err;
 }

 return 0;
}
