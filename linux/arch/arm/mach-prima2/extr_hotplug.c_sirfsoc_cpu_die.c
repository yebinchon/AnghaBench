
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int platform_do_lowpower (unsigned int) ;

void sirfsoc_cpu_die(unsigned int cpu)
{
 platform_do_lowpower(cpu);
}
