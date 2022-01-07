
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rt_timer {int timer_freq; int timer_div; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 int TIMER_REG_TMR0LOAD ;
 int TIMER_REG_TMRSTAT ;
 int TMRSTAT_TMR0INT ;
 int rt_timer_w32 (struct rt_timer*,int ,int) ;

__attribute__((used)) static irqreturn_t rt_timer_irq(int irq, void *_rt)
{
 struct rt_timer *rt = (struct rt_timer *) _rt;

 rt_timer_w32(rt, TIMER_REG_TMR0LOAD, rt->timer_freq / rt->timer_div);
 rt_timer_w32(rt, TIMER_REG_TMRSTAT, TMRSTAT_TMR0INT);

 return IRQ_HANDLED;
}
