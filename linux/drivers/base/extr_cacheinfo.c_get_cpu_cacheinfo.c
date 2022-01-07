
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cpu_cacheinfo {int dummy; } ;


 struct cpu_cacheinfo* ci_cacheinfo (unsigned int) ;

struct cpu_cacheinfo *get_cpu_cacheinfo(unsigned int cpu)
{
 return ci_cacheinfo(cpu);
}
