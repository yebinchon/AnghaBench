
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
typedef scalar_t__ time64_t ;
struct rtc_time {int dummy; } ;
struct device {int dummy; } ;


 int AICA_RTC_SECS_H ;
 int AICA_RTC_SECS_L ;
 unsigned long TWENTY_YEARS ;
 int __raw_readl (int ) ;
 int rtc_time64_to_tm (scalar_t__,struct rtc_time*) ;

__attribute__((used)) static int aica_rtc_gettimeofday(struct device *dev, struct rtc_time *tm)
{
 unsigned long val1, val2;
 time64_t t;

 do {
  val1 = ((__raw_readl(AICA_RTC_SECS_H) & 0xffff) << 16) |
   (__raw_readl(AICA_RTC_SECS_L) & 0xffff);

  val2 = ((__raw_readl(AICA_RTC_SECS_H) & 0xffff) << 16) |
   (__raw_readl(AICA_RTC_SECS_L) & 0xffff);
 } while (val1 != val2);


 t = (u32)(val1 - TWENTY_YEARS);

 rtc_time64_to_tm(t, tm);

 return 0;
}
