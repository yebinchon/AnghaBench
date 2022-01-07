
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timer_of {int dummy; } ;
struct clock_event_device {int dummy; } ;


 unsigned long SYST_CON_EN ;
 unsigned long SYST_CON_IRQ_EN ;
 int SYST_CON_REG (struct timer_of*) ;
 int SYST_VAL_REG (struct timer_of*) ;
 struct timer_of* to_timer_of (struct clock_event_device*) ;
 int writel (unsigned long,int ) ;

__attribute__((used)) static int mtk_syst_clkevt_next_event(unsigned long ticks,
          struct clock_event_device *clkevt)
{
 struct timer_of *to = to_timer_of(clkevt);


 writel(SYST_CON_EN, SYST_CON_REG(to));





 writel(ticks, SYST_VAL_REG(to));


 writel(SYST_CON_EN | SYST_CON_IRQ_EN, SYST_CON_REG(to));

 return 0;
}
