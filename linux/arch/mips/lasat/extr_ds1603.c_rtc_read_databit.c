
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int data_read_shift; } ;


 TYPE_1__* ds1603 ;
 int rtc_cycle_clock (int ) ;
 int rtc_datareg_read () ;
 int rtc_reg_read () ;

__attribute__((used)) static unsigned int rtc_read_databit(void)
{
 unsigned int data;

 data = (rtc_datareg_read() & (1 << ds1603->data_read_shift))
  >> ds1603->data_read_shift;
 rtc_cycle_clock(rtc_reg_read());
 return data;
}
