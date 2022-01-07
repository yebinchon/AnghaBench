
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct platform_device {int dummy; } ;
typedef int pm_message_t ;
struct TYPE_6__ {int dev; } ;
struct TYPE_5__ {int dev; } ;
struct TYPE_4__ {int dev; } ;


 int CS5536_PM_PWRBTN ;
 int EC_SCI_SRC_EBOOK ;
 int GPIO_EVENTS_ENABLE ;
 int GPIO_NEGATIVE_EDGE_STS ;
 int GPIO_POSITIVE_EDGE_STS ;
 scalar_t__ LID_WAKE_CLOSE ;
 scalar_t__ LID_WAKE_OPEN ;
 int OLPC_GPIO_LID ;
 int cs5535_gpio_clear (int ,int ) ;
 int cs5535_gpio_set (int ,int ) ;
 scalar_t__ device_may_wakeup (int *) ;
 TYPE_3__* ebook_switch_idev ;
 int flip_lid_inverter () ;
 scalar_t__ lid_open ;
 TYPE_2__* lid_switch_idev ;
 scalar_t__ lid_wake_mode ;
 int olpc_ec_wakeup_clear (int ) ;
 int olpc_ec_wakeup_set (int ) ;
 int olpc_xo1_pm_wakeup_clear (int ) ;
 int olpc_xo1_pm_wakeup_set (int ) ;
 TYPE_1__* power_button_idev ;

__attribute__((used)) static int xo1_sci_suspend(struct platform_device *pdev, pm_message_t state)
{
 if (device_may_wakeup(&power_button_idev->dev))
  olpc_xo1_pm_wakeup_set(CS5536_PM_PWRBTN);
 else
  olpc_xo1_pm_wakeup_clear(CS5536_PM_PWRBTN);

 if (device_may_wakeup(&ebook_switch_idev->dev))
  olpc_ec_wakeup_set(EC_SCI_SRC_EBOOK);
 else
  olpc_ec_wakeup_clear(EC_SCI_SRC_EBOOK);

 if (!device_may_wakeup(&lid_switch_idev->dev)) {
  cs5535_gpio_clear(OLPC_GPIO_LID, GPIO_EVENTS_ENABLE);
 } else if ((lid_open && lid_wake_mode == LID_WAKE_OPEN) ||
     (!lid_open && lid_wake_mode == LID_WAKE_CLOSE)) {
  flip_lid_inverter();


  cs5535_gpio_set(OLPC_GPIO_LID, GPIO_NEGATIVE_EDGE_STS);
  cs5535_gpio_set(OLPC_GPIO_LID, GPIO_POSITIVE_EDGE_STS);

  cs5535_gpio_set(OLPC_GPIO_LID, GPIO_EVENTS_ENABLE);
 }

 return 0;
}
