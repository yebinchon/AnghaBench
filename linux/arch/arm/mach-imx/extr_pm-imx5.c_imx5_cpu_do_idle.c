
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int cpu_do_idle () ;
 scalar_t__ likely (int) ;
 int tzic_enable_wake () ;

__attribute__((used)) static inline int imx5_cpu_do_idle(void)
{
 int ret = tzic_enable_wake();

 if (likely(!ret))
  cpu_do_idle();

 return ret;
}
