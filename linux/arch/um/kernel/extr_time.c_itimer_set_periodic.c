
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clock_event_device {int dummy; } ;


 unsigned long long HZ ;
 unsigned long long NSEC_PER_SEC ;
 scalar_t__ TT_MODE_INFCPU ;
 scalar_t__ TT_MODE_OFF ;
 int TT_TMR_PERIODIC ;
 int os_timer_set_interval (unsigned long long) ;
 scalar_t__ time_travel_mode ;
 int time_travel_set_timer_expiry (unsigned long long) ;
 int time_travel_set_timer_interval (unsigned long long) ;
 int time_travel_set_timer_mode (int ) ;
 unsigned long long time_travel_time ;

__attribute__((used)) static int itimer_set_periodic(struct clock_event_device *evt)
{
 unsigned long long interval = NSEC_PER_SEC / HZ;

 if (time_travel_mode != TT_MODE_OFF) {
  time_travel_set_timer_mode(TT_TMR_PERIODIC);
  time_travel_set_timer_expiry(time_travel_time + interval);
  time_travel_set_timer_interval(interval);
 }

 if (time_travel_mode != TT_MODE_INFCPU)
  os_timer_set_interval(interval);

 return 0;
}
