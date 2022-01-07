
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int RTC_PORT (int) ;
 int lock_cmos_prefix (unsigned char) ;
 int lock_cmos_suffix (unsigned char) ;
 int outb (unsigned char,int ) ;

void rtc_cmos_write(unsigned char val, unsigned char addr)
{
 lock_cmos_prefix(addr);
 outb(addr, RTC_PORT(0));
 outb(val, RTC_PORT(1));
 lock_cmos_suffix(addr);
}
