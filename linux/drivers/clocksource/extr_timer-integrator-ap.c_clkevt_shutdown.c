
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct clock_event_device {int dummy; } ;


 scalar_t__ TIMER_CTRL ;
 int TIMER_CTRL_ENABLE ;
 scalar_t__ clkevt_base ;
 int readl (scalar_t__) ;
 int writel (int,scalar_t__) ;

__attribute__((used)) static int clkevt_shutdown(struct clock_event_device *evt)
{
 u32 ctrl = readl(clkevt_base + TIMER_CTRL) & ~TIMER_CTRL_ENABLE;


 writel(ctrl, clkevt_base + TIMER_CTRL);
 return 0;
}
