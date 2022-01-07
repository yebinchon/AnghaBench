
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int sh_idle () ;

void arch_cpu_idle(void)
{
 sh_idle();
}
