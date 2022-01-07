
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ int64_t ;


 scalar_t__ k_uptime_get () ;

double
jerry_port_get_current_time (void)
{
  int64_t ms = k_uptime_get();
  return (double) ms;
}
