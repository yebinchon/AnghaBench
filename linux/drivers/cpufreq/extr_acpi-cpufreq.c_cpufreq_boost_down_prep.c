
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int boost_set_msr (int) ;

__attribute__((used)) static int cpufreq_boost_down_prep(unsigned int cpu)
{




 return boost_set_msr(1);
}
