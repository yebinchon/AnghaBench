
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ TT_MODE_BASIC ;
 scalar_t__ TT_MODE_INFCPU ;
 scalar_t__ TT_TMR_DISABLED ;
 scalar_t__ TT_TMR_ONESHOT ;
 scalar_t__ TT_TMR_PERIODIC ;
 int deliver_alarm () ;
 int os_timer_disable () ;
 int os_timer_one_shot (unsigned long long) ;
 int os_timer_set_interval (scalar_t__) ;
 scalar_t__ time_travel_mode ;
 int time_travel_set_time (unsigned long long) ;
 int time_travel_set_timer_expiry (scalar_t__) ;
 int time_travel_set_timer_mode (scalar_t__) ;
 unsigned long long time_travel_time ;
 unsigned long long time_travel_timer_expiry ;
 scalar_t__ time_travel_timer_interval ;
 scalar_t__ time_travel_timer_mode ;

__attribute__((used)) static void time_travel_sleep(unsigned long long duration)
{
 unsigned long long next = time_travel_time + duration;

 if (time_travel_mode != TT_MODE_INFCPU)
  os_timer_disable();

 while (time_travel_timer_mode == TT_TMR_PERIODIC &&
        time_travel_timer_expiry < time_travel_time)
  time_travel_set_timer_expiry(time_travel_timer_expiry +
          time_travel_timer_interval);

 if (time_travel_timer_mode != TT_TMR_DISABLED &&
     time_travel_timer_expiry < next) {
  if (time_travel_timer_mode == TT_TMR_ONESHOT)
   time_travel_set_timer_mode(TT_TMR_DISABLED);





  if (time_travel_mode != TT_MODE_BASIC)
   time_travel_set_time(time_travel_timer_expiry);

  deliver_alarm();
 } else {
  time_travel_set_time(next);
 }

 if (time_travel_mode != TT_MODE_INFCPU) {
  if (time_travel_timer_mode == TT_TMR_PERIODIC)
   os_timer_set_interval(time_travel_timer_interval);
  else if (time_travel_timer_mode == TT_TMR_ONESHOT)
   os_timer_one_shot(time_travel_timer_expiry - next);
 }
}
