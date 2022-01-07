
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int lasat_ndelay (int) ;
 int rtc_nrst_low () ;

__attribute__((used)) static void rtc_end_op(void)
{
 rtc_nrst_low();
 lasat_ndelay(1000);
}
