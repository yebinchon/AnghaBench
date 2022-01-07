
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct timer_of {int dummy; } ;
struct clock_event_device {int dummy; } ;


 scalar_t__ NPCM7XX_REG_TCSR0 ;
 scalar_t__ NPCM7XX_REG_TICR0 ;
 int NPCM7XX_START_PERIODIC_Tx ;
 int NPCM7XX_Tx_OPER ;
 int readl (scalar_t__) ;
 scalar_t__ timer_of_base (struct timer_of*) ;
 int timer_of_period (struct timer_of*) ;
 struct timer_of* to_timer_of (struct clock_event_device*) ;
 int writel (int ,scalar_t__) ;

__attribute__((used)) static int npcm7xx_timer_periodic(struct clock_event_device *evt)
{
 struct timer_of *to = to_timer_of(evt);
 u32 val;

 writel(timer_of_period(to), timer_of_base(to) + NPCM7XX_REG_TICR0);

 val = readl(timer_of_base(to) + NPCM7XX_REG_TCSR0);
 val &= ~NPCM7XX_Tx_OPER;
 val |= NPCM7XX_START_PERIODIC_Tx;
 writel(val, timer_of_base(to) + NPCM7XX_REG_TCSR0);

 return 0;
}
