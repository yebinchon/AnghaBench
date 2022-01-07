
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ maple_rtc_addr ;
 int outb_p (unsigned long,scalar_t__) ;

__attribute__((used)) static void maple_clock_write(unsigned long val, int addr)
{
 outb_p(addr, maple_rtc_addr);
 outb_p(val, maple_rtc_addr+1);
}
