
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rk_timer {int ctrl; } ;


 int TIMER_DISABLE ;
 int writel_relaxed (int ,int ) ;

__attribute__((used)) static inline void rk_timer_disable(struct rk_timer *timer)
{
 writel_relaxed(TIMER_DISABLE, timer->ctrl);
}
