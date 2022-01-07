
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint32_t ;


 scalar_t__ get_uptime_ms () ;
 scalar_t__ uptime_to_epoch (scalar_t__) ;

double jerry_port_get_current_time (void)
{
  uint32_t uptime_ms = get_uptime_ms ();
  uint32_t epoch_time = uptime_to_epoch (uptime_ms);

  return ((double) epoch_time) * 1000.0;
}
