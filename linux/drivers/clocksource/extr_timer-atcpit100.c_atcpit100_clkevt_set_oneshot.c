
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct timer_of {int dummy; } ;
struct clock_event_device {int dummy; } ;


 int CH0TMR0EN ;
 scalar_t__ CH0_REL ;
 scalar_t__ CH_EN ;
 int readl (scalar_t__) ;
 scalar_t__ timer_of_base (struct timer_of*) ;
 struct timer_of* to_timer_of (struct clock_event_device*) ;
 int writel (int,scalar_t__) ;

__attribute__((used)) static int atcpit100_clkevt_set_oneshot(struct clock_event_device *evt)
{
 struct timer_of *to = to_timer_of(evt);
 u32 val;

 writel(~0x0, timer_of_base(to) + CH0_REL);
 val = readl(timer_of_base(to) + CH_EN);
 writel(val | CH0TMR0EN, timer_of_base(to) + CH_EN);

 return 0;
}
