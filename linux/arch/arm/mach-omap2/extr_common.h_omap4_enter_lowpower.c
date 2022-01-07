
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int cpu_do_idle () ;

__attribute__((used)) static inline int omap4_enter_lowpower(unsigned int cpu,
     unsigned int power_state)
{
 cpu_do_idle();
 return 0;
}
