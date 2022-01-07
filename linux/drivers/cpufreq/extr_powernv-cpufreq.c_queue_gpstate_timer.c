
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct global_pstate_info {scalar_t__ elapsed_time; int timer; } ;


 unsigned int GPSTATE_TIMER_INTERVAL ;
 scalar_t__ MAX_RAMP_DOWN_TIME ;
 scalar_t__ jiffies ;
 int mod_timer (int *,scalar_t__) ;
 scalar_t__ msecs_to_jiffies (unsigned int) ;

__attribute__((used)) static inline void queue_gpstate_timer(struct global_pstate_info *gpstates)
{
 unsigned int timer_interval;







 if ((gpstates->elapsed_time + GPSTATE_TIMER_INTERVAL)
      > MAX_RAMP_DOWN_TIME)
  timer_interval = MAX_RAMP_DOWN_TIME - gpstates->elapsed_time;
 else
  timer_interval = GPSTATE_TIMER_INTERVAL;

 mod_timer(&gpstates->timer, jiffies + msecs_to_jiffies(timer_interval));
}
