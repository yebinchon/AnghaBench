
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clock_event_device {int dummy; } ;


 int SYST_CON_REG (int ) ;
 int to_timer_of (struct clock_event_device*) ;
 int writel (int ,int ) ;

__attribute__((used)) static int mtk_syst_clkevt_shutdown(struct clock_event_device *clkevt)
{

 writel(0, SYST_CON_REG(to_timer_of(clkevt)));

 return 0;
}
