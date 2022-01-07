
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct TYPE_2__ {scalar_t__ base; } ;
struct sun5i_timer_clkevt {TYPE_1__ timer; } ;


 scalar_t__ TIMER_CNTVAL_LO_REG (int) ;
 scalar_t__ TIMER_SYNC_TICKS ;
 int cpu_relax () ;
 scalar_t__ readl (scalar_t__) ;

__attribute__((used)) static void sun5i_clkevt_sync(struct sun5i_timer_clkevt *ce)
{
 u32 old = readl(ce->timer.base + TIMER_CNTVAL_LO_REG(1));

 while ((old - readl(ce->timer.base + TIMER_CNTVAL_LO_REG(1))) < TIMER_SYNC_TICKS)
  cpu_relax();
}
