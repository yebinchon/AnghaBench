
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ PITTCTRL ;
 int PITTCTRL_TEN ;
 int PITTCTRL_TIE ;
 int __raw_writel (int,scalar_t__) ;
 scalar_t__ clkevt_base ;

__attribute__((used)) static inline void pit_timer_enable(void)
{
 __raw_writel(PITTCTRL_TEN | PITTCTRL_TIE, clkevt_base + PITTCTRL);
}
