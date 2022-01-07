
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clock_event_device {int dummy; } ;


 scalar_t__ TIMER1_2_CONTROL_OFFSET ;
 scalar_t__ cns3xxx_tmr1 ;
 unsigned long readl (scalar_t__) ;
 int writel (unsigned long,scalar_t__) ;

__attribute__((used)) static int cns3xxx_set_oneshot(struct clock_event_device *clk)
{
 unsigned long ctrl = readl(cns3xxx_tmr1 + TIMER1_2_CONTROL_OFFSET);


 ctrl |= (1 << 2) | (1 << 9);
 writel(ctrl, cns3xxx_tmr1 + TIMER1_2_CONTROL_OFFSET);
 return 0;
}
