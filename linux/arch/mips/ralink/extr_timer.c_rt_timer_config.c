
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rt_timer {unsigned long timer_freq; unsigned long timer_div; } ;


 int TIMER_REG_TMR0LOAD ;
 int rt_timer_w32 (struct rt_timer*,int ,int) ;

__attribute__((used)) static int rt_timer_config(struct rt_timer *rt, unsigned long divisor)
{
 if (rt->timer_freq < divisor)
  rt->timer_div = rt->timer_freq;
 else
  rt->timer_div = divisor;

 rt_timer_w32(rt, TIMER_REG_TMR0LOAD, rt->timer_freq / rt->timer_div);

 return 0;
}
