
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtc_time {unsigned int tm_sec; unsigned int tm_min; unsigned int tm_hour; unsigned int tm_mday; unsigned int tm_mon; unsigned int tm_year; unsigned int tm_wday; } ;


 void* CMOS_READ (int ) ;
 int HZ ;
 scalar_t__ RTC_ALWAYS_BCD ;
 int RTC_CONTROL ;
 int RTC_DAY_OF_MONTH ;
 int RTC_DAY_OF_WEEK ;
 int RTC_DEC_YEAR ;
 unsigned char RTC_DM_BINARY ;
 int RTC_HOURS ;
 int RTC_MINUTES ;
 int RTC_MONTH ;
 int RTC_SECONDS ;
 int RTC_YEAR ;
 void* bcd2bin (unsigned int) ;
 int cpu_relax () ;
 int epoch ;
 unsigned long jiffies ;
 scalar_t__ rtc_is_updating () ;
 int rtc_lock ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 scalar_t__ time_before (unsigned long,unsigned long) ;

__attribute__((used)) static void rtc_get_rtc_time(struct rtc_time *rtc_tm)
{
 unsigned long uip_watchdog = jiffies, flags;
 unsigned char ctrl;
 while (rtc_is_updating() != 0 &&
        time_before(jiffies, uip_watchdog + 2*HZ/100))
  cpu_relax();







 spin_lock_irqsave(&rtc_lock, flags);
 rtc_tm->tm_sec = CMOS_READ(RTC_SECONDS);
 rtc_tm->tm_min = CMOS_READ(RTC_MINUTES);
 rtc_tm->tm_hour = CMOS_READ(RTC_HOURS);
 rtc_tm->tm_mday = CMOS_READ(RTC_DAY_OF_MONTH);
 rtc_tm->tm_mon = CMOS_READ(RTC_MONTH);
 rtc_tm->tm_year = CMOS_READ(RTC_YEAR);

 rtc_tm->tm_wday = CMOS_READ(RTC_DAY_OF_WEEK);




 ctrl = CMOS_READ(RTC_CONTROL);
 spin_unlock_irqrestore(&rtc_lock, flags);

 if (!(ctrl & RTC_DM_BINARY) || RTC_ALWAYS_BCD) {
  rtc_tm->tm_sec = bcd2bin(rtc_tm->tm_sec);
  rtc_tm->tm_min = bcd2bin(rtc_tm->tm_min);
  rtc_tm->tm_hour = bcd2bin(rtc_tm->tm_hour);
  rtc_tm->tm_mday = bcd2bin(rtc_tm->tm_mday);
  rtc_tm->tm_mon = bcd2bin(rtc_tm->tm_mon);
  rtc_tm->tm_year = bcd2bin(rtc_tm->tm_year);
  rtc_tm->tm_wday = bcd2bin(rtc_tm->tm_wday);
 }
 rtc_tm->tm_year += epoch - 1900;
 if (rtc_tm->tm_year <= 69)
  rtc_tm->tm_year += 100;

 rtc_tm->tm_mon--;
}
