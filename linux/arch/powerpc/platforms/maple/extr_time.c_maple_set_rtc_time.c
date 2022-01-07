
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtc_time {int tm_sec; int tm_min; int tm_hour; int tm_mon; int tm_mday; int tm_year; } ;


 scalar_t__ RTC_ALWAYS_BCD ;
 int RTC_CONTROL ;
 int RTC_DAY_OF_MONTH ;
 unsigned char RTC_DIV_RESET2 ;
 unsigned char RTC_DM_BINARY ;
 int RTC_FREQ_SELECT ;
 int RTC_HOURS ;
 int RTC_MINUTES ;
 int RTC_MONTH ;
 int RTC_SECONDS ;
 unsigned char RTC_SET ;
 int RTC_YEAR ;
 int bin2bcd (int) ;
 unsigned char maple_clock_read (int ) ;
 int maple_clock_write (unsigned char,int ) ;
 int rtc_lock ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

int maple_set_rtc_time(struct rtc_time *tm)
{
 unsigned char save_control, save_freq_select;
 int sec, min, hour, mon, mday, year;

 spin_lock(&rtc_lock);

 save_control = maple_clock_read(RTC_CONTROL);

 maple_clock_write((save_control|RTC_SET), RTC_CONTROL);

 save_freq_select = maple_clock_read(RTC_FREQ_SELECT);

 maple_clock_write((save_freq_select|RTC_DIV_RESET2), RTC_FREQ_SELECT);

 sec = tm->tm_sec;
 min = tm->tm_min;
 hour = tm->tm_hour;
 mon = tm->tm_mon;
 mday = tm->tm_mday;
 year = tm->tm_year;

 if (!(save_control & RTC_DM_BINARY) || RTC_ALWAYS_BCD) {
  sec = bin2bcd(sec);
  min = bin2bcd(min);
  hour = bin2bcd(hour);
  mon = bin2bcd(mon);
  mday = bin2bcd(mday);
  year = bin2bcd(year);
 }
 maple_clock_write(sec, RTC_SECONDS);
 maple_clock_write(min, RTC_MINUTES);
 maple_clock_write(hour, RTC_HOURS);
 maple_clock_write(mon, RTC_MONTH);
 maple_clock_write(mday, RTC_DAY_OF_MONTH);
 maple_clock_write(year, RTC_YEAR);
 maple_clock_write(save_control, RTC_CONTROL);
 maple_clock_write(save_freq_select, RTC_FREQ_SELECT);

 spin_unlock(&rtc_lock);

 return 0;
}
