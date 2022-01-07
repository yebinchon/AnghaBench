
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtc_time {int tm_sec; int tm_min; int tm_hour; int tm_mday; int tm_mon; int tm_year; int tm_wday; } ;


 int I2C_WRITE_MASK ;
 int RTC_I2C_ADDRESS ;
 int RTC_Y2K_MASK ;
 int i2c_outb (int) ;
 int i2c_start () ;
 int i2c_stop () ;
 int rtc_lock ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;
 void* to_bcd (int) ;

__attribute__((used)) static void set_rtc_time(struct rtc_time *rtc_tm)
{
 rtc_tm->tm_sec = to_bcd(rtc_tm->tm_sec);
 rtc_tm->tm_min = to_bcd(rtc_tm->tm_min);
 rtc_tm->tm_hour = to_bcd(rtc_tm->tm_hour);
 rtc_tm->tm_mday = to_bcd(rtc_tm->tm_mday);
 rtc_tm->tm_mon = to_bcd(rtc_tm->tm_mon + 1);
 rtc_tm->tm_year = to_bcd(rtc_tm->tm_year);

 if (rtc_tm->tm_year >= 0x100) {
  rtc_tm->tm_year -= 0x100;
  rtc_tm->tm_mon |= RTC_Y2K_MASK;
 }

 spin_lock_irq(&rtc_lock);
 i2c_start();
 i2c_outb(RTC_I2C_ADDRESS | I2C_WRITE_MASK);
 i2c_outb(0x00);
 i2c_outb(rtc_tm->tm_sec);
 i2c_outb(rtc_tm->tm_min);
 i2c_outb(rtc_tm->tm_hour);
 i2c_outb(rtc_tm->tm_wday);
 i2c_outb(rtc_tm->tm_mday);
 i2c_outb(rtc_tm->tm_mon);
 i2c_outb(rtc_tm->tm_year);
 i2c_stop();
 spin_unlock_irq(&rtc_lock);
}
