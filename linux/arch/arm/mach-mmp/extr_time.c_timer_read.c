
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;


 scalar_t__ TMR_CVWR (int) ;
 int __raw_readl (scalar_t__) ;
 int __raw_writel (int,scalar_t__) ;
 int cpu_relax () ;
 scalar_t__ mmp_timer_base ;

__attribute__((used)) static inline uint32_t timer_read(void)
{
 int delay = 100;

 __raw_writel(1, mmp_timer_base + TMR_CVWR(1));

 while (delay--)
  cpu_relax();

 return __raw_readl(mmp_timer_base + TMR_CVWR(1));
}
