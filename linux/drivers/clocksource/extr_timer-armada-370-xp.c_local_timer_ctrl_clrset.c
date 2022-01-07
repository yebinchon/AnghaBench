
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 scalar_t__ TIMER_CTRL_OFF ;
 scalar_t__ local_base ;
 int readl (scalar_t__) ;
 int writel (int,scalar_t__) ;

__attribute__((used)) static void local_timer_ctrl_clrset(u32 clr, u32 set)
{
 writel((readl(local_base + TIMER_CTRL_OFF) & ~clr) | set,
  local_base + TIMER_CTRL_OFF);
}
