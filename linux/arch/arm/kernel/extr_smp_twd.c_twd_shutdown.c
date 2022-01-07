
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clock_event_device {int dummy; } ;


 scalar_t__ TWD_TIMER_CONTROL ;
 scalar_t__ twd_base ;
 int writel_relaxed (int ,scalar_t__) ;

__attribute__((used)) static int twd_shutdown(struct clock_event_device *clk)
{
 writel_relaxed(0, twd_base + TWD_TIMER_CONTROL);
 return 0;
}
