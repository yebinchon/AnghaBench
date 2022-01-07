
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int BIT (int) ;
 scalar_t__ JZ_REG_TIMER_STOP_CLEAR ;
 scalar_t__ jz4740_timer_base ;
 int writel (int ,scalar_t__) ;

void jz4740_timer_enable_watchdog(void)
{
 writel(BIT(16), jz4740_timer_base + JZ_REG_TIMER_STOP_CLEAR);
}
