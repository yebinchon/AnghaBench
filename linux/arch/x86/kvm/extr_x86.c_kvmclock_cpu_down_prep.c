
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int __this_cpu_write (int ,int ) ;
 int cpu_tsc_khz ;

__attribute__((used)) static int kvmclock_cpu_down_prep(unsigned int cpu)
{
 __this_cpu_write(cpu_tsc_khz, 0);
 return 0;
}
