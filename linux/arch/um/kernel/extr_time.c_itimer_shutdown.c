
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clock_event_device {int dummy; } ;


 scalar_t__ TT_MODE_INFCPU ;
 scalar_t__ TT_MODE_OFF ;
 int TT_TMR_DISABLED ;
 int os_timer_disable () ;
 scalar_t__ time_travel_mode ;
 int time_travel_set_timer_mode (int ) ;

__attribute__((used)) static int itimer_shutdown(struct clock_event_device *evt)
{
 if (time_travel_mode != TT_MODE_OFF)
  time_travel_set_timer_mode(TT_TMR_DISABLED);

 if (time_travel_mode != TT_MODE_INFCPU)
  os_timer_disable();

 return 0;
}
