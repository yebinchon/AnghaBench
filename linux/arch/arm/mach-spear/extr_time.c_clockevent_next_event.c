
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct clock_event_device {int dummy; } ;


 int CLKEVT ;
 scalar_t__ CR (int ) ;
 int CTRL_ENABLE ;
 int CTRL_INT_ENABLE ;
 scalar_t__ LOAD (int ) ;
 scalar_t__ gpt_base ;
 int readw (scalar_t__) ;
 int writew (int,scalar_t__) ;

__attribute__((used)) static int clockevent_next_event(unsigned long cycles,
     struct clock_event_device *clk_event_dev)
{
 u16 val = readw(gpt_base + CR(CLKEVT));

 if (val & CTRL_ENABLE)
  writew(val & ~CTRL_ENABLE, gpt_base + CR(CLKEVT));

 writew(cycles, gpt_base + LOAD(CLKEVT));

 val |= CTRL_ENABLE | CTRL_INT_ENABLE;
 writew(val, gpt_base + CR(CLKEVT));

 return 0;
}
