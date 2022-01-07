
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct clocksource {int dummy; } ;


 int TIMER_MULTIPLIER ;
 scalar_t__ TT_MODE_OFF ;
 int os_nsecs () ;
 scalar_t__ time_travel_mode ;
 int time_travel_set_time (int) ;
 int time_travel_time ;

__attribute__((used)) static u64 timer_read(struct clocksource *cs)
{
 if (time_travel_mode != TT_MODE_OFF) {






  time_travel_set_time(time_travel_time + TIMER_MULTIPLIER);
  return time_travel_time / TIMER_MULTIPLIER;
 }

 return os_nsecs() / TIMER_MULTIPLIER;
}
