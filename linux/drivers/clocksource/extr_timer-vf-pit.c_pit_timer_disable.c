
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ PITTCTRL ;
 int __raw_writel (int ,scalar_t__) ;
 scalar_t__ clkevt_base ;

__attribute__((used)) static inline void pit_timer_disable(void)
{
 __raw_writel(0, clkevt_base + PITTCTRL);
}
