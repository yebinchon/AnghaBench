
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ waysize; } ;
struct TYPE_4__ {scalar_t__ waysize; } ;
struct TYPE_6__ {scalar_t__ waysize; } ;
struct cpuinfo_mips {TYPE_2__ tcache; TYPE_1__ scache; TYPE_3__ icache; } ;
struct cpu_cacheinfo {int cpu_map_populated; struct cacheinfo* info_list; } ;
struct cacheinfo {int dummy; } ;


 int CACHE_TYPE_DATA ;
 int CACHE_TYPE_INST ;
 int CACHE_TYPE_UNIFIED ;
 struct cpuinfo_mips current_cpu_data ;
 int dcache ;
 struct cpu_cacheinfo* get_cpu_cacheinfo (unsigned int) ;
 int icache ;
 int populate_cache (int ,struct cacheinfo*,int,int ) ;
 int scache ;
 int tcache ;

__attribute__((used)) static int __populate_cache_leaves(unsigned int cpu)
{
 struct cpuinfo_mips *c = &current_cpu_data;
 struct cpu_cacheinfo *this_cpu_ci = get_cpu_cacheinfo(cpu);
 struct cacheinfo *this_leaf = this_cpu_ci->info_list;

 if (c->icache.waysize) {
  populate_cache(dcache, this_leaf, 1, CACHE_TYPE_DATA);
  populate_cache(icache, this_leaf, 1, CACHE_TYPE_INST);
 } else {
  populate_cache(dcache, this_leaf, 1, CACHE_TYPE_UNIFIED);
 }

 if (c->scache.waysize)
  populate_cache(scache, this_leaf, 2, CACHE_TYPE_UNIFIED);

 if (c->tcache.waysize)
  populate_cache(tcache, this_leaf, 3, CACHE_TYPE_UNIFIED);

 this_cpu_ci->cpu_map_populated = 1;

 return 0;
}
