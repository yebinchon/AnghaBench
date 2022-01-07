
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clock_event_device {int dummy; } ;


 scalar_t__ TIMER_CTRL ;
 scalar_t__ clkevt_base ;
 int writel (int ,scalar_t__) ;

__attribute__((used)) static inline void timer_shutdown(struct clock_event_device *evt)
{
 writel(0, clkevt_base + TIMER_CTRL);
}
