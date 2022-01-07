
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cpumask {int dummy; } ;
struct cache {int level; struct cpumask const shared_cpu_map; } ;


 struct cpumask const* cpu_smallcore_mask (int) ;

__attribute__((used)) static const struct cpumask *get_big_core_shared_cpu_map(int cpu, struct cache *cache)
{
 if (cache->level == 1)
  return cpu_smallcore_mask(cpu);

 return &cache->shared_cpu_map;
}
