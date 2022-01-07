
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct work_struct {int dummy; } ;
struct TYPE_7__ {scalar_t__ ac_status; int mainbat_percent; int mainbat_voltage; int mainbat_status; } ;
struct TYPE_8__ {scalar_t__ charge_mode; int flags; int dev; TYPE_3__ battstat; TYPE_2__* machinfo; scalar_t__ charge_start_time; } ;
struct TYPE_6__ {int (* read_devdata ) (int ) ;TYPE_1__* bat_levels_noac; int batfull_irq; } ;
struct TYPE_5__ {int voltage; } ;


 scalar_t__ APM_AC_OFFLINE ;
 scalar_t__ APM_AC_ONLINE ;
 int APM_BATTERY_STATUS_CRITICAL ;
 int APM_BATTERY_STATUS_HIGH ;
 int APM_CRITICAL_SUSPEND ;
 scalar_t__ CHRG_ON ;
 int SHARPSL_APM_QUEUED ;
 int SHARPSL_BATCHK_TIME ;
 int SHARPSL_BATT_VOLT ;
 scalar_t__ SHARPSL_CHARGE_ON_TIME_INTERVAL ;
 int SHARPSL_STATUS_ACIN ;
 int apm_queue_event (int ) ;
 int dev_dbg (int ,char*,int,int,int,int ) ;
 int dev_err (int ,char*) ;
 int dev_warn (int ,char*) ;
 int get_apm_status (int) ;
 int get_percentage (int) ;
 int jiffies ;
 int schedule_delayed_work (int *,int ) ;
 int sharpsl_average_value (int) ;
 int sharpsl_bat ;
 TYPE_4__ sharpsl_pm ;
 int stub1 (int ) ;
 int stub2 (int ) ;
 scalar_t__ time_after (int ,scalar_t__) ;
 int toggle_charger ;

__attribute__((used)) static void sharpsl_battery_thread(struct work_struct *private_)
{
 int voltage, percent, apm_status, i;

 if (!sharpsl_pm.machinfo)
  return;

 sharpsl_pm.battstat.ac_status = (sharpsl_pm.machinfo->read_devdata(SHARPSL_STATUS_ACIN) ? APM_AC_ONLINE : APM_AC_OFFLINE);


 if (!sharpsl_pm.machinfo->batfull_irq && (sharpsl_pm.charge_mode == CHRG_ON)
   && time_after(jiffies, sharpsl_pm.charge_start_time + SHARPSL_CHARGE_ON_TIME_INTERVAL))
  schedule_delayed_work(&toggle_charger, 0);

 for (i = 0; i < 5; i++) {
  voltage = sharpsl_pm.machinfo->read_devdata(SHARPSL_BATT_VOLT);
  if (voltage > 0)
   break;
 }
 if (voltage <= 0) {
  voltage = sharpsl_pm.machinfo->bat_levels_noac[0].voltage;
  dev_warn(sharpsl_pm.dev, "Warning: Cannot read main battery!\n");
 }

 voltage = sharpsl_average_value(voltage);
 apm_status = get_apm_status(voltage);
 percent = get_percentage(voltage);



 if ((sharpsl_pm.battstat.ac_status == APM_AC_ONLINE)
     || (apm_status == APM_BATTERY_STATUS_HIGH)
     || percent <= sharpsl_pm.battstat.mainbat_percent) {
  sharpsl_pm.battstat.mainbat_voltage = voltage;
  sharpsl_pm.battstat.mainbat_status = apm_status;
  sharpsl_pm.battstat.mainbat_percent = percent;
 }

 dev_dbg(sharpsl_pm.dev, "Battery: voltage: %d, status: %d, percentage: %d, time: %ld\n", voltage,
   sharpsl_pm.battstat.mainbat_status, sharpsl_pm.battstat.mainbat_percent, jiffies);


 if ((sharpsl_pm.battstat.ac_status != APM_AC_ONLINE)
      && (sharpsl_pm.battstat.mainbat_status == APM_BATTERY_STATUS_CRITICAL)
      && !(sharpsl_pm.flags & SHARPSL_APM_QUEUED)) {
  sharpsl_pm.flags |= SHARPSL_APM_QUEUED;
  dev_err(sharpsl_pm.dev, "Fatal Off\n");
  apm_queue_event(APM_CRITICAL_SUSPEND);
 }

 schedule_delayed_work(&sharpsl_bat, SHARPSL_BATCHK_TIME);
}
