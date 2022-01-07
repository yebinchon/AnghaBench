
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ TIMER0_RELOAD_OFF ;
 scalar_t__ TIMER0_VAL_OFF ;
 scalar_t__ TIMER_CTRL_OFF ;
 scalar_t__ local_base ;
 int timer0_ctrl_reg ;
 int timer0_local_ctrl_reg ;
 scalar_t__ timer_base ;
 int writel (int,scalar_t__) ;

__attribute__((used)) static void armada_370_xp_timer_resume(void)
{
 writel(0xffffffff, timer_base + TIMER0_VAL_OFF);
 writel(0xffffffff, timer_base + TIMER0_RELOAD_OFF);
 writel(timer0_ctrl_reg, timer_base + TIMER_CTRL_OFF);
 writel(timer0_local_ctrl_reg, local_base + TIMER_CTRL_OFF);
}
