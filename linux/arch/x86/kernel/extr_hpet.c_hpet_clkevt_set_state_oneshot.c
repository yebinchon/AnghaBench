
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct clock_event_device {int dummy; } ;
struct TYPE_2__ {unsigned int num; } ;


 unsigned int HPET_TN_32BIT ;
 unsigned int HPET_TN_ENABLE ;
 unsigned int HPET_TN_PERIODIC ;
 int HPET_Tn_CFG (unsigned int) ;
 TYPE_1__* clockevent_to_channel (struct clock_event_device*) ;
 unsigned int hpet_readl (int ) ;
 int hpet_writel (unsigned int,int ) ;

__attribute__((used)) static int hpet_clkevt_set_state_oneshot(struct clock_event_device *evt)
{
 unsigned int channel = clockevent_to_channel(evt)->num;
 unsigned int cfg;

 cfg = hpet_readl(HPET_Tn_CFG(channel));
 cfg &= ~HPET_TN_PERIODIC;
 cfg |= HPET_TN_ENABLE | HPET_TN_32BIT;
 hpet_writel(cfg, HPET_Tn_CFG(channel));

 return 0;
}
