
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ xive_enabled () ;
 int xive_smp_prepare_cpu (int) ;

__attribute__((used)) static int pseries_smp_prepare_cpu(int cpu)
{
 if (xive_enabled())
  return xive_smp_prepare_cpu(cpu);
 return 0;
}
