
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned long u32 ;
struct timer_of {int dummy; } ;
struct clock_event_device {int dummy; } ;


 scalar_t__ NPCM7XX_REG_TCSR0 ;
 scalar_t__ NPCM7XX_REG_TICR0 ;
 unsigned long NPCM7XX_START_Tx ;
 unsigned long readl (scalar_t__) ;
 scalar_t__ timer_of_base (struct timer_of*) ;
 struct timer_of* to_timer_of (struct clock_event_device*) ;
 int writel (unsigned long,scalar_t__) ;

__attribute__((used)) static int npcm7xx_clockevent_set_next_event(unsigned long evt,
  struct clock_event_device *clk)
{
 struct timer_of *to = to_timer_of(clk);
 u32 val;

 writel(evt, timer_of_base(to) + NPCM7XX_REG_TICR0);
 val = readl(timer_of_base(to) + NPCM7XX_REG_TCSR0);
 val |= NPCM7XX_START_Tx;
 writel(val, timer_of_base(to) + NPCM7XX_REG_TCSR0);

 return 0;
}
