
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct rt_timer {int timer_freq; int timer_div; } ;


 int TIMER_REG_TMR0CTL ;
 int TIMER_REG_TMR0LOAD ;
 int TMR0CTL_ENABLE ;
 int rt_timer_r32 (struct rt_timer*,int ) ;
 int rt_timer_w32 (struct rt_timer*,int ,int) ;

__attribute__((used)) static int rt_timer_enable(struct rt_timer *rt)
{
 u32 t;

 rt_timer_w32(rt, TIMER_REG_TMR0LOAD, rt->timer_freq / rt->timer_div);

 t = rt_timer_r32(rt, TIMER_REG_TMR0CTL);
 t |= TMR0CTL_ENABLE;
 rt_timer_w32(rt, TIMER_REG_TMR0CTL, t);

 return 0;
}
