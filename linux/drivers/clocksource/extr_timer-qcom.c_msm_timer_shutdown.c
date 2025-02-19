
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct clock_event_device {int dummy; } ;


 scalar_t__ TIMER_ENABLE ;
 int TIMER_ENABLE_CLR_ON_MATCH_EN ;
 int TIMER_ENABLE_EN ;
 scalar_t__ event_base ;
 int readl_relaxed (scalar_t__) ;
 int writel_relaxed (int,scalar_t__) ;

__attribute__((used)) static int msm_timer_shutdown(struct clock_event_device *evt)
{
 u32 ctrl;

 ctrl = readl_relaxed(event_base + TIMER_ENABLE);
 ctrl &= ~(TIMER_ENABLE_EN | TIMER_ENABLE_CLR_ON_MATCH_EN);
 writel_relaxed(ctrl, event_base + TIMER_ENABLE);
 return 0;
}
