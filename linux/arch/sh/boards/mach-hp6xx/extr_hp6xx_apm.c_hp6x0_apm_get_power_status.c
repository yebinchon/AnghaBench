
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct apm_power_info {int battery_life; int time; int ac_line_status; int battery_flag; int battery_status; scalar_t__ units; } ;


 int ADC_CHANNEL_BACKUP ;
 int ADC_CHANNEL_BATTERY ;
 int ADC_CHANNEL_CHARGE ;
 int APM_AC_OFFLINE ;
 int APM_AC_ONLINE ;
 int APM_BATTERY_STATUS_CHARGING ;
 int APM_BATTERY_STATUS_CRITICAL ;
 int APM_BATTERY_STATUS_HIGH ;
 int APM_BATTERY_STATUS_LOW ;
 int APM_BATTERY_STATUS_NOT_PRESENT ;
 int APM_CRITICAL ;
 int APM_LOW ;
 int HP680_BATTERY_AC_ON ;
 int HP680_BATTERY_MAX ;
 int HP680_BATTERY_MIN ;
 int PGDR ;
 int PGDR_MAIN_BATTERY_OUT ;
 int __raw_readb (int ) ;
 int adc_single (int ) ;

__attribute__((used)) static void hp6x0_apm_get_power_status(struct apm_power_info *info)
{
 int battery, backup, charging, percentage;
 u8 pgdr;

 battery = adc_single(ADC_CHANNEL_BATTERY);
 backup = adc_single(ADC_CHANNEL_BACKUP);
 charging = adc_single(ADC_CHANNEL_CHARGE);

 percentage = 100 * (battery - HP680_BATTERY_MIN) /
      (HP680_BATTERY_MAX - HP680_BATTERY_MIN);


 info->battery_life = percentage;


 info->units = 0;


 info->time = (2 * battery);

 info->ac_line_status = (battery > HP680_BATTERY_AC_ON) ?
    APM_AC_ONLINE : APM_AC_OFFLINE;

 pgdr = __raw_readb(PGDR);
 if (pgdr & PGDR_MAIN_BATTERY_OUT) {
  info->battery_status = APM_BATTERY_STATUS_NOT_PRESENT;
  info->battery_flag = 0x80;
 } else if (charging < 8) {
  info->battery_status = APM_BATTERY_STATUS_CHARGING;
  info->battery_flag = 0x08;
  info->ac_line_status = 0x01;
 } else if (percentage <= APM_CRITICAL) {
  info->battery_status = APM_BATTERY_STATUS_CRITICAL;
  info->battery_flag = 0x04;
 } else if (percentage <= APM_LOW) {
  info->battery_status = APM_BATTERY_STATUS_LOW;
  info->battery_flag = 0x02;
 } else {
  info->battery_status = APM_BATTERY_STATUS_HIGH;
  info->battery_flag = 0x01;
 }
}
