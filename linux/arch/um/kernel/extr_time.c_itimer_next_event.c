
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clock_event_device {int dummy; } ;


 scalar_t__ TT_MODE_INFCPU ;
 scalar_t__ TT_MODE_OFF ;
 int TT_TMR_ONESHOT ;
 int os_timer_one_shot (unsigned long) ;
 scalar_t__ time_travel_mode ;
 int time_travel_set_timer_expiry (scalar_t__) ;
 int time_travel_set_timer_mode (int ) ;
 scalar_t__ time_travel_time ;

__attribute__((used)) static int itimer_next_event(unsigned long delta,
        struct clock_event_device *evt)
{
 delta += 1;

 if (time_travel_mode != TT_MODE_OFF) {
  time_travel_set_timer_mode(TT_TMR_ONESHOT);
  time_travel_set_timer_expiry(time_travel_time + delta);
 }

 if (time_travel_mode != TT_MODE_INFCPU)
  return os_timer_one_shot(delta);

 return 0;
}
