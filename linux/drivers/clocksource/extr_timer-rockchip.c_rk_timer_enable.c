
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct rk_timer {int ctrl; } ;


 int TIMER_ENABLE ;
 int writel_relaxed (int,int ) ;

__attribute__((used)) static inline void rk_timer_enable(struct rk_timer *timer, u32 flags)
{
 writel_relaxed(TIMER_ENABLE | flags, timer->ctrl);
}
