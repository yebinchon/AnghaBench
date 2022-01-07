
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cpu_cacheinfo {int num_levels; scalar_t__ num_leaves; } ;


 int EINVAL ;
 int ENOENT ;
 struct cpu_cacheinfo* get_cpu_cacheinfo (unsigned int) ;
 scalar_t__ num_cache_leaves ;

__attribute__((used)) static int __init_cache_level(unsigned int cpu)
{
 struct cpu_cacheinfo *this_cpu_ci = get_cpu_cacheinfo(cpu);

 if (!num_cache_leaves)
  return -ENOENT;
 if (!this_cpu_ci)
  return -EINVAL;
 this_cpu_ci->num_levels = 3;
 this_cpu_ci->num_leaves = num_cache_leaves;
 return 0;
}
