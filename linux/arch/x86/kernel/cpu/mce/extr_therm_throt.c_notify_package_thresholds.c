
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int __u64 ;


 int PACKAGE_LEVEL ;
 int THERM_LOG_THRESHOLD0 ;
 int THERM_LOG_THRESHOLD1 ;
 int platform_thermal_package_notify (int) ;
 scalar_t__ platform_thermal_package_rate_control () ;
 scalar_t__ thresh_event_valid (int ,int) ;

__attribute__((used)) static void notify_package_thresholds(__u64 msr_val)
{
 bool notify_thres_0 = 0;
 bool notify_thres_1 = 0;

 if (!platform_thermal_package_notify)
  return;


 if (msr_val & THERM_LOG_THRESHOLD0)
  notify_thres_0 = 1;

 if (msr_val & THERM_LOG_THRESHOLD1)
  notify_thres_1 = 1;

 if (!notify_thres_0 && !notify_thres_1)
  return;

 if (platform_thermal_package_rate_control &&
  platform_thermal_package_rate_control()) {

  platform_thermal_package_notify(msr_val);
  return;
 }


 if (notify_thres_0 && thresh_event_valid(PACKAGE_LEVEL, 0))
  platform_thermal_package_notify(msr_val);

 if (notify_thres_1 && thresh_event_valid(PACKAGE_LEVEL, 1))
  platform_thermal_package_notify(msr_val);
}
