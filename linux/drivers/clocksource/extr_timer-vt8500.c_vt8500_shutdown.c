
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clock_event_device {int dummy; } ;


 scalar_t__ TIMER_CTRL_VAL ;
 scalar_t__ TIMER_IER_VAL ;
 int readl (scalar_t__) ;
 scalar_t__ regbase ;
 int writel (int,scalar_t__) ;

__attribute__((used)) static int vt8500_shutdown(struct clock_event_device *evt)
{
 writel(readl(regbase + TIMER_CTRL_VAL) | 1, regbase + TIMER_CTRL_VAL);
 writel(0, regbase + TIMER_IER_VAL);
 return 0;
}
