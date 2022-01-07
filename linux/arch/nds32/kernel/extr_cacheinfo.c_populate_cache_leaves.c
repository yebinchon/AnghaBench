
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cpu_cacheinfo {unsigned int num_levels; unsigned int num_leaves; struct cacheinfo* info_list; } ;
struct cacheinfo {int dummy; } ;


 int CACHE_TYPE_DATA ;
 int CACHE_TYPE_INST ;
 int ci_leaf_init (int ,int ,unsigned int) ;
 struct cpu_cacheinfo* get_cpu_cacheinfo (unsigned int) ;

int populate_cache_leaves(unsigned int cpu)
{
 unsigned int level, idx;
 struct cpu_cacheinfo *this_cpu_ci = get_cpu_cacheinfo(cpu);
 struct cacheinfo *this_leaf = this_cpu_ci->info_list;

 for (idx = 0, level = 1; level <= this_cpu_ci->num_levels &&
      idx < this_cpu_ci->num_leaves; idx++, level++) {
  ci_leaf_init(this_leaf++, CACHE_TYPE_DATA, level);
  ci_leaf_init(this_leaf++, CACHE_TYPE_INST, level);
 }
 return 0;
}
