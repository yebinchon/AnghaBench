
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cpu_cacheinfo {int num_levels; int num_leaves; } ;


 struct cpu_cacheinfo* get_cpu_cacheinfo (unsigned int) ;

int init_cache_level(unsigned int cpu)
{
 struct cpu_cacheinfo *this_cpu_ci = get_cpu_cacheinfo(cpu);


 this_cpu_ci->num_levels = 1;
 this_cpu_ci->num_leaves = 2;
 return 0;
}
