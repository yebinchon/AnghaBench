
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int time64_t ;
struct rtc_time {int dummy; } ;
struct device {int dummy; } ;


 int AICA_RTC_SECS_H ;
 int AICA_RTC_SECS_L ;
 int TWENTY_YEARS ;
 int __raw_readl (int ) ;
 int __raw_writel (int,int ) ;
 int rtc_tm_to_time64 (struct rtc_time*) ;

__attribute__((used)) static int aica_rtc_settimeofday(struct device *dev, struct rtc_time *tm)
{
 unsigned long val1, val2;
 time64_t secs = rtc_tm_to_time64(tm);
 u32 adj = secs + TWENTY_YEARS;

 do {
  __raw_writel((adj & 0xffff0000) >> 16, AICA_RTC_SECS_H);
  __raw_writel((adj & 0xffff), AICA_RTC_SECS_L);

  val1 = ((__raw_readl(AICA_RTC_SECS_H) & 0xffff) << 16) |
   (__raw_readl(AICA_RTC_SECS_L) & 0xffff);

  val2 = ((__raw_readl(AICA_RTC_SECS_H) & 0xffff) << 16) |
   (__raw_readl(AICA_RTC_SECS_L) & 0xffff);
 } while (val1 != val2);

 return 0;
}
