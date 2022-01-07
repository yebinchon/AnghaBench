
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rk_timer {int dummy; } ;
struct clock_event_device {int dummy; } ;


 int TIMER_INT_UNMASK ;
 int TIMER_MODE_USER_DEFINED_COUNT ;
 struct rk_timer* rk_timer (struct clock_event_device*) ;
 int rk_timer_disable (struct rk_timer*) ;
 int rk_timer_enable (struct rk_timer*,int) ;
 int rk_timer_update_counter (unsigned long,struct rk_timer*) ;

__attribute__((used)) static inline int rk_timer_set_next_event(unsigned long cycles,
       struct clock_event_device *ce)
{
 struct rk_timer *timer = rk_timer(ce);

 rk_timer_disable(timer);
 rk_timer_update_counter(cycles, timer);
 rk_timer_enable(timer, TIMER_MODE_USER_DEFINED_COUNT |
          TIMER_INT_UNMASK);
 return 0;
}
