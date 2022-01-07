
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef int uint32_t ;
typedef int time_t ;


 int time (int *) ;
 int us_ticker_read () ;

double
jerry_port_get_current_time (void)
{
  static uint64_t last_tick = 0;
  static time_t last_time = 0;
  static uint32_t skew = 0;

  uint64_t curr_tick = us_ticker_read ();
  time_t curr_time = time(((void*)0));
  double result = curr_time * 1000;
  if (curr_time - last_time > (time_t)(((uint32_t)-1) / 1000000)) {
    skew = 0;
  } else if (last_tick > curr_tick) {
    skew = (skew + 33) % 1000;
  }
  result += (curr_tick / 1000 - skew) % 1000;

  last_tick = curr_tick;
  last_time = curr_time;
  return result;
}
