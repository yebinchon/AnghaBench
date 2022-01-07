
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nokia_bt_dev {int rx_enabled; int wakeup_host; TYPE_1__* serdev; } ;
struct device {int dummy; } ;
typedef int irqreturn_t ;
struct TYPE_2__ {struct device dev; } ;


 int IRQ_HANDLED ;
 int gpiod_get_value (int ) ;
 int pm_runtime_get (struct device*) ;
 int pm_runtime_put (struct device*) ;

__attribute__((used)) static irqreturn_t wakeup_handler(int irq, void *data)
{
 struct nokia_bt_dev *btdev = data;
 struct device *dev = &btdev->serdev->dev;
 int wake_state = gpiod_get_value(btdev->wakeup_host);

 if (btdev->rx_enabled == wake_state)
  return IRQ_HANDLED;

 if (wake_state)
  pm_runtime_get(dev);
 else
  pm_runtime_put(dev);

 btdev->rx_enabled = wake_state;

 return IRQ_HANDLED;
}
