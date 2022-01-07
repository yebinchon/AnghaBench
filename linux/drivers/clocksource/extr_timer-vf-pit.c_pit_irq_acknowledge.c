
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ PITTFLG ;
 int PITTFLG_TIF ;
 int __raw_writel (int ,scalar_t__) ;
 scalar_t__ clkevt_base ;

__attribute__((used)) static inline void pit_irq_acknowledge(void)
{
 __raw_writel(PITTFLG_TIF, clkevt_base + PITTFLG);
}
