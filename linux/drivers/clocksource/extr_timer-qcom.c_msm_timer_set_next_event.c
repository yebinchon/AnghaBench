
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned long u32 ;
struct clock_event_device {int dummy; } ;


 scalar_t__ TIMER_CLEAR ;
 scalar_t__ TIMER_ENABLE ;
 unsigned long TIMER_ENABLE_EN ;
 scalar_t__ TIMER_MATCH_VAL ;
 int TIMER_STS_GPT0_CLR_PEND ;
 int cpu_relax () ;
 scalar_t__ event_base ;
 int readl_relaxed (scalar_t__) ;
 scalar_t__ sts_base ;
 int writel_relaxed (unsigned long,scalar_t__) ;

__attribute__((used)) static int msm_timer_set_next_event(unsigned long cycles,
        struct clock_event_device *evt)
{
 u32 ctrl = readl_relaxed(event_base + TIMER_ENABLE);

 ctrl &= ~TIMER_ENABLE_EN;
 writel_relaxed(ctrl, event_base + TIMER_ENABLE);

 writel_relaxed(ctrl, event_base + TIMER_CLEAR);
 writel_relaxed(cycles, event_base + TIMER_MATCH_VAL);

 if (sts_base)
  while (readl_relaxed(sts_base) & TIMER_STS_GPT0_CLR_PEND)
   cpu_relax();

 writel_relaxed(ctrl | TIMER_ENABLE_EN, event_base + TIMER_ENABLE);
 return 0;
}
