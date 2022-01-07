
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cpuinfo_x86 {int dummy; } ;


 int find_num_cache_leaves (struct cpuinfo_x86*) ;
 int num_cache_leaves ;

void init_hygon_cacheinfo(struct cpuinfo_x86 *c)
{
 num_cache_leaves = find_num_cache_leaves(c);
}
