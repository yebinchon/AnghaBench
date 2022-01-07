
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rk_timer {scalar_t__ base; } ;


 scalar_t__ TIMER_LOAD_COUNT0 ;
 scalar_t__ TIMER_LOAD_COUNT1 ;
 int writel_relaxed (unsigned long,scalar_t__) ;

__attribute__((used)) static void rk_timer_update_counter(unsigned long cycles,
        struct rk_timer *timer)
{
 writel_relaxed(cycles, timer->base + TIMER_LOAD_COUNT0);
 writel_relaxed(0, timer->base + TIMER_LOAD_COUNT1);
}
