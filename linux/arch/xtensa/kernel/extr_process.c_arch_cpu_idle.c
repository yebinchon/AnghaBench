
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int platform_idle () ;

void arch_cpu_idle(void)
{
 platform_idle();
}
