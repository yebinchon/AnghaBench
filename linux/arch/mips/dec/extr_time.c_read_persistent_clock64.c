
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timespec64 {scalar_t__ tv_nsec; int tv_sec; } ;


 unsigned int CMOS_READ (int ) ;
 scalar_t__ RTC_ALWAYS_BCD ;
 int RTC_CONTROL ;
 int RTC_DAY_OF_MONTH ;
 int RTC_DEC_YEAR ;
 unsigned int RTC_DM_BINARY ;
 int RTC_HOURS ;
 int RTC_MINUTES ;
 int RTC_MONTH ;
 int RTC_SECONDS ;
 int RTC_YEAR ;
 unsigned int bcd2bin (unsigned int) ;
 int mktime64 (unsigned int,unsigned int,unsigned int,unsigned int,unsigned int,unsigned int) ;
 int rtc_lock ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

void read_persistent_clock64(struct timespec64 *ts)
{
 unsigned int year, mon, day, hour, min, sec, real_year;
 unsigned long flags;

 spin_lock_irqsave(&rtc_lock, flags);

 do {
  sec = CMOS_READ(RTC_SECONDS);
  min = CMOS_READ(RTC_MINUTES);
  hour = CMOS_READ(RTC_HOURS);
  day = CMOS_READ(RTC_DAY_OF_MONTH);
  mon = CMOS_READ(RTC_MONTH);
  year = CMOS_READ(RTC_YEAR);





  real_year = CMOS_READ(RTC_DEC_YEAR);
 } while (sec != CMOS_READ(RTC_SECONDS));

 spin_unlock_irqrestore(&rtc_lock, flags);

 if (!(CMOS_READ(RTC_CONTROL) & RTC_DM_BINARY) || RTC_ALWAYS_BCD) {
  sec = bcd2bin(sec);
  min = bcd2bin(min);
  hour = bcd2bin(hour);
  day = bcd2bin(day);
  mon = bcd2bin(mon);
  year = bcd2bin(year);
 }

 year += real_year - 72 + 2000;

 ts->tv_sec = mktime64(year, mon, day, hour, min, sec);
 ts->tv_nsec = 0;
}
