
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {unsigned long clk; unsigned long data; int huge_delay; scalar_t__ data_reversed; } ;


 TYPE_1__* ds1603 ;
 int lasat_ndelay (int) ;
 int rtc_reg_write (unsigned long) ;

__attribute__((used)) static void rtc_cycle_clock(unsigned long data)
{
 data |= ds1603->clk;
 rtc_reg_write(data);
 lasat_ndelay(250);
 if (ds1603->data_reversed)
  data &= ~ds1603->data;
 else
  data |= ds1603->data;
 data &= ~ds1603->clk;
 rtc_reg_write(data);
 lasat_ndelay(250 + ds1603->huge_delay);
}
