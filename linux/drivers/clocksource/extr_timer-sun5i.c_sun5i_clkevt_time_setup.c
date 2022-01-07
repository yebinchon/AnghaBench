
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct TYPE_2__ {scalar_t__ base; } ;
struct sun5i_timer_clkevt {TYPE_1__ timer; } ;


 scalar_t__ TIMER_INTVAL_LO_REG (int ) ;
 int writel (int ,scalar_t__) ;

__attribute__((used)) static void sun5i_clkevt_time_setup(struct sun5i_timer_clkevt *ce, u8 timer, u32 delay)
{
 writel(delay, ce->timer.base + TIMER_INTVAL_LO_REG(timer));
}
