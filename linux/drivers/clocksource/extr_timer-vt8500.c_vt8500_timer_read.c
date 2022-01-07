
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct clocksource {int dummy; } ;


 scalar_t__ TIMER_AS_VAL ;
 int TIMER_COUNT_R_ACTIVE ;
 scalar_t__ TIMER_COUNT_VAL ;
 scalar_t__ TIMER_CTRL_VAL ;
 int cpu_relax () ;
 int msecs_to_loops (int) ;
 int readl (scalar_t__) ;
 scalar_t__ regbase ;
 int writel (int,scalar_t__) ;

__attribute__((used)) static u64 vt8500_timer_read(struct clocksource *cs)
{
 int loops = msecs_to_loops(10);
 writel(3, regbase + TIMER_CTRL_VAL);
 while ((readl((regbase + TIMER_AS_VAL)) & TIMER_COUNT_R_ACTIVE)
      && --loops)
  cpu_relax();
 return readl(regbase + TIMER_COUNT_VAL);
}
