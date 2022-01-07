
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned int calc_speed (int ) ;
 int longhaul_get_cpu_mult () ;

__attribute__((used)) static unsigned int longhaul_get(unsigned int cpu)
{
 if (cpu)
  return 0;
 return calc_speed(longhaul_get_cpu_mult());
}
