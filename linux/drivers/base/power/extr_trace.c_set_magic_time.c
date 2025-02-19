
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtc_time {unsigned int tm_min; unsigned int tm_hour; int tm_mday; int tm_mon; int tm_year; int tm_wday; int tm_yday; int tm_isdst; int tm_sec; } ;


 unsigned int FILEHASH ;
 unsigned int USERHASH ;
 int mc146818_set_time (struct rtc_time*) ;
 int pm_trace_rtc_abused ;

__attribute__((used)) static int set_magic_time(unsigned int user, unsigned int file, unsigned int device)
{
 unsigned int n = user + USERHASH*(file + FILEHASH*device);


 static struct rtc_time time = {
  .tm_sec = 0,
  .tm_min = 0,
  .tm_hour = 0,
  .tm_mday = 7,
  .tm_mon = 5,
  .tm_year = 106,
  .tm_wday = 3,
  .tm_yday = 160,
  .tm_isdst = 1
 };

 time.tm_year = (n % 100);
 n /= 100;
 time.tm_mon = (n % 12);
 n /= 12;
 time.tm_mday = (n % 28) + 1;
 n /= 28;
 time.tm_hour = (n % 24);
 n /= 24;
 time.tm_min = (n % 20) * 3;
 n /= 20;
 mc146818_set_time(&time);
 pm_trace_rtc_abused = 1;
 return n ? -1 : 0;
}
