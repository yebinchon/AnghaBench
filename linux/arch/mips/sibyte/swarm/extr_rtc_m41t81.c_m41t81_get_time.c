
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int time64_t ;


 int M41T81REG_DT ;
 int M41T81REG_HR ;
 int M41T81REG_MN ;
 int M41T81REG_MO ;
 int M41T81REG_SC ;
 int M41T81REG_YR ;
 unsigned int bcd2bin (unsigned int) ;
 int m41t81_read (int ) ;
 int mktime64 (unsigned int,unsigned int,unsigned int,unsigned int,unsigned int,unsigned int) ;
 int rtc_lock ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

time64_t m41t81_get_time(void)
{
 unsigned int year, mon, day, hour, min, sec;
 unsigned long flags;




 for (;;) {
  spin_lock_irqsave(&rtc_lock, flags);
  sec = m41t81_read(M41T81REG_SC);
  min = m41t81_read(M41T81REG_MN);
  if (sec == m41t81_read(M41T81REG_SC)) break;
  spin_unlock_irqrestore(&rtc_lock, flags);
 }
 hour = m41t81_read(M41T81REG_HR) & 0x3f;
 day = m41t81_read(M41T81REG_DT);
 mon = m41t81_read(M41T81REG_MO);
 year = m41t81_read(M41T81REG_YR);
 spin_unlock_irqrestore(&rtc_lock, flags);

 sec = bcd2bin(sec);
 min = bcd2bin(min);
 hour = bcd2bin(hour);
 day = bcd2bin(day);
 mon = bcd2bin(mon);
 year = bcd2bin(year);

 year += 2000;

 return mktime64(year, mon, day, hour, min, sec);
}
