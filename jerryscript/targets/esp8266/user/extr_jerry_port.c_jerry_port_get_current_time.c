
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint32_t ;


 scalar_t__ system_rtc_clock_cali_proc () ;

double
jerry_port_get_current_time (void)
{
  uint32_t rtc_time = system_rtc_clock_cali_proc();
  return (double) rtc_time;
}
