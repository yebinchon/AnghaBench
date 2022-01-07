
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint64_t ;
struct clock_event_device {int mult; int shift; } ;
struct TYPE_2__ {unsigned int num; } ;


 int HPET_COUNTER ;
 unsigned int HPET_TN_32BIT ;
 unsigned int HPET_TN_ENABLE ;
 unsigned int HPET_TN_PERIODIC ;
 unsigned int HPET_TN_SETVAL ;
 int HPET_Tn_CFG (unsigned int) ;
 int HPET_Tn_CMP (unsigned int) ;
 int HZ ;
 int NSEC_PER_SEC ;
 TYPE_1__* clockevent_to_channel (struct clock_event_device*) ;
 int hpet_print_config () ;
 unsigned int hpet_readl (int ) ;
 int hpet_start_counter () ;
 int hpet_stop_counter () ;
 int hpet_writel (unsigned int,int ) ;
 int udelay (int) ;

__attribute__((used)) static int hpet_clkevt_set_state_periodic(struct clock_event_device *evt)
{
 unsigned int channel = clockevent_to_channel(evt)->num;
 unsigned int cfg, cmp, now;
 uint64_t delta;

 hpet_stop_counter();
 delta = ((uint64_t)(NSEC_PER_SEC / HZ)) * evt->mult;
 delta >>= evt->shift;
 now = hpet_readl(HPET_COUNTER);
 cmp = now + (unsigned int)delta;
 cfg = hpet_readl(HPET_Tn_CFG(channel));
 cfg |= HPET_TN_ENABLE | HPET_TN_PERIODIC | HPET_TN_SETVAL |
        HPET_TN_32BIT;
 hpet_writel(cfg, HPET_Tn_CFG(channel));
 hpet_writel(cmp, HPET_Tn_CMP(channel));
 udelay(1);







 hpet_writel((unsigned int)delta, HPET_Tn_CMP(channel));
 hpet_start_counter();
 hpet_print_config();

 return 0;
}
