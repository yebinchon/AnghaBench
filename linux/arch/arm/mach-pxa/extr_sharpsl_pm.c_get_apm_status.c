
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ charge_mode; TYPE_1__* machinfo; } ;
struct TYPE_3__ {int status_high_acin; int status_low_acin; int status_high_noac; int status_low_noac; } ;


 int APM_BATTERY_STATUS_CRITICAL ;
 int APM_BATTERY_STATUS_HIGH ;
 int APM_BATTERY_STATUS_LOW ;
 scalar_t__ CHRG_ON ;
 TYPE_2__ sharpsl_pm ;

__attribute__((used)) static int get_apm_status(int voltage)
{
 int low_thresh, high_thresh;

 if (sharpsl_pm.charge_mode == CHRG_ON) {
  high_thresh = sharpsl_pm.machinfo->status_high_acin;
  low_thresh = sharpsl_pm.machinfo->status_low_acin;
 } else {
  high_thresh = sharpsl_pm.machinfo->status_high_noac;
  low_thresh = sharpsl_pm.machinfo->status_low_noac;
 }

 if (voltage >= high_thresh)
  return APM_BATTERY_STATUS_HIGH;
 if (voltage >= low_thresh)
  return APM_BATTERY_STATUS_LOW;
 return APM_BATTERY_STATUS_CRITICAL;
}
