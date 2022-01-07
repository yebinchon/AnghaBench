
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct work_struct {int dummy; } ;
struct TYPE_4__ {int charge_start_time; TYPE_1__* machinfo; int dev; } ;
struct TYPE_3__ {int (* charge ) (int) ;int (* read_devdata ) (int ) ;} ;


 int SHARPSL_CHARGE_WAIT_TIME ;
 int SHARPSL_LED_ON ;
 int SHARPSL_STATUS_ACIN ;
 int dev_dbg (int ,char*,int ) ;
 int jiffies ;
 int mdelay (int ) ;
 scalar_t__ sharpsl_ac_check () ;
 int sharpsl_charge_error () ;
 int sharpsl_charge_off () ;
 scalar_t__ sharpsl_check_battery_temp () ;
 TYPE_2__ sharpsl_pm ;
 int sharpsl_pm_led (int ) ;
 int stub1 (int ) ;
 int stub2 (int) ;
 int stub3 (int) ;

__attribute__((used)) static void sharpsl_charge_toggle(struct work_struct *private_)
{
 dev_dbg(sharpsl_pm.dev, "Toggling Charger at time: %lx\n", jiffies);

 if (!sharpsl_pm.machinfo->read_devdata(SHARPSL_STATUS_ACIN)) {
  sharpsl_charge_off();
  return;
 } else if ((sharpsl_check_battery_temp() < 0) || (sharpsl_ac_check() < 0)) {
  sharpsl_charge_error();
  return;
 }

 sharpsl_pm_led(SHARPSL_LED_ON);
 sharpsl_pm.machinfo->charge(0);
 mdelay(SHARPSL_CHARGE_WAIT_TIME);
 sharpsl_pm.machinfo->charge(1);

 sharpsl_pm.charge_start_time = jiffies;
}
