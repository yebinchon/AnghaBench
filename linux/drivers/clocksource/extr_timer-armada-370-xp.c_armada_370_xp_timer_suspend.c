
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ TIMER_CTRL_OFF ;
 scalar_t__ local_base ;
 void* readl (scalar_t__) ;
 void* timer0_ctrl_reg ;
 void* timer0_local_ctrl_reg ;
 scalar_t__ timer_base ;

__attribute__((used)) static int armada_370_xp_timer_suspend(void)
{
 timer0_ctrl_reg = readl(timer_base + TIMER_CTRL_OFF);
 timer0_local_ctrl_reg = readl(local_base + TIMER_CTRL_OFF);
 return 0;
}
