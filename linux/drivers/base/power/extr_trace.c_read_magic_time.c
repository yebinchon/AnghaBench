
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtc_time {unsigned int tm_year; int tm_mon; int tm_mday; int tm_hour; int tm_min; } ;


 int mc146818_get_time (struct rtc_time*) ;
 int pr_info (char*,struct rtc_time*,struct rtc_time*) ;

__attribute__((used)) static unsigned int read_magic_time(void)
{
 struct rtc_time time;
 unsigned int val;

 mc146818_get_time(&time);
 pr_info("RTC time: %ptRt, date: %ptRd\n", &time, &time);
 val = time.tm_year;
 if (val > 100)
  val -= 100;
 val += time.tm_mon * 100;
 val += (time.tm_mday-1) * 100 * 12;
 val += time.tm_hour * 100 * 12 * 28;
 val += (time.tm_min / 3) * 100 * 12 * 28 * 24;
 return val;
}
