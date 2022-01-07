
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int __u64 ;


 int CORE_LEVEL ;
 int THERM_LOG_THRESHOLD0 ;
 int THERM_LOG_THRESHOLD1 ;
 int platform_thermal_notify (int) ;
 scalar_t__ thresh_event_valid (int ,int) ;

__attribute__((used)) static void notify_thresholds(__u64 msr_val)
{



 if (!platform_thermal_notify)
  return;


 if ((msr_val & THERM_LOG_THRESHOLD0) &&
   thresh_event_valid(CORE_LEVEL, 0))
  platform_thermal_notify(msr_val);

 if ((msr_val & THERM_LOG_THRESHOLD1) &&
   thresh_event_valid(CORE_LEVEL, 1))
  platform_thermal_notify(msr_val);
}
