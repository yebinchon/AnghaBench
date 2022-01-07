
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CMOS_READ (int ) ;
 int RTC_PF ;
 int RTC_REG_C ;

int ds1287_timer_state(void)
{
 return (CMOS_READ(RTC_REG_C) & RTC_PF) != 0;
}
