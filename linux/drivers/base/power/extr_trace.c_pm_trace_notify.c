
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct notifier_block {int dummy; } ;




 int pm_trace_rtc_abused ;
 int pr_warn (char*) ;

__attribute__((used)) static int
pm_trace_notify(struct notifier_block *nb, unsigned long mode, void *_unused)
{
 switch (mode) {
 case 129:
 case 128:
  if (pm_trace_rtc_abused) {
   pm_trace_rtc_abused = 0;
   pr_warn("Possible incorrect RTC due to pm_trace, please use 'ntpdate' or 'rdate' to reset it.\n");
  }
  break;
 default:
  break;
 }
 return 0;
}
