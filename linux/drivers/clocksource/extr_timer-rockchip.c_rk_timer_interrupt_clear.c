
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rk_timer {scalar_t__ base; } ;


 scalar_t__ TIMER_INT_STATUS ;
 int writel_relaxed (int,scalar_t__) ;

__attribute__((used)) static void rk_timer_interrupt_clear(struct rk_timer *timer)
{
 writel_relaxed(1, timer->base + TIMER_INT_STATUS);
}
