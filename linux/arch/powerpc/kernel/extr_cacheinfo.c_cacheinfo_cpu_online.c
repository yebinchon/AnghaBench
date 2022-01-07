
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cache {int dummy; } ;


 struct cache* cache_chain_instantiate (unsigned int) ;
 int cacheinfo_sysfs_populate (unsigned int,struct cache*) ;

void cacheinfo_cpu_online(unsigned int cpu_id)
{
 struct cache *cache;

 cache = cache_chain_instantiate(cpu_id);
 if (!cache)
  return;

 cacheinfo_sysfs_populate(cpu_id, cache);
}
