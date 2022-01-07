
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct timespec64 {scalar_t__ tv_nsec; int tv_sec; } ;


 int RTC_DAY_OF_MONTH ;
 int RTC_FREQ_SELECT ;
 int RTC_HOURS ;
 int RTC_MINUTES ;
 int RTC_MONTH ;
 int RTC_SECONDS ;
 int RTC_UIP ;
 int RTC_YEAR ;
 int cpu_relax () ;
 int mktime64 (int,int,int,int,int,int) ;
 int pr_info (char*,int,int,int,int,int,int) ;
 int rtc_lock ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int vrtc_cmos_read (int ) ;

void vrtc_get_time(struct timespec64 *now)
{
 u8 sec, min, hour, mday, mon;
 unsigned long flags;
 u32 year;

 spin_lock_irqsave(&rtc_lock, flags);

 while ((vrtc_cmos_read(RTC_FREQ_SELECT) & RTC_UIP))
  cpu_relax();

 sec = vrtc_cmos_read(RTC_SECONDS);
 min = vrtc_cmos_read(RTC_MINUTES);
 hour = vrtc_cmos_read(RTC_HOURS);
 mday = vrtc_cmos_read(RTC_DAY_OF_MONTH);
 mon = vrtc_cmos_read(RTC_MONTH);
 year = vrtc_cmos_read(RTC_YEAR);

 spin_unlock_irqrestore(&rtc_lock, flags);


 year += 1972;

 pr_info("vRTC: sec: %d min: %d hour: %d day: %d "
  "mon: %d year: %d\n", sec, min, hour, mday, mon, year);

 now->tv_sec = mktime64(year, mon, mday, hour, min, sec);
 now->tv_nsec = 0;
}
