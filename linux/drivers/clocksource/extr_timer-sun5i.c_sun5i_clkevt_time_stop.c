
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct TYPE_2__ {scalar_t__ base; } ;
struct sun5i_timer_clkevt {TYPE_1__ timer; } ;


 int TIMER_CTL_ENABLE ;
 scalar_t__ TIMER_CTL_REG (int ) ;
 int readl (scalar_t__) ;
 int sun5i_clkevt_sync (struct sun5i_timer_clkevt*) ;
 int writel (int,scalar_t__) ;

__attribute__((used)) static void sun5i_clkevt_time_stop(struct sun5i_timer_clkevt *ce, u8 timer)
{
 u32 val = readl(ce->timer.base + TIMER_CTL_REG(timer));
 writel(val & ~TIMER_CTL_ENABLE, ce->timer.base + TIMER_CTL_REG(timer));

 sun5i_clkevt_sync(ce);
}
