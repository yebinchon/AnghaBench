
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct cpu_cacheinfo {int num_leaves; TYPE_1__* info_list; } ;
struct TYPE_2__ {int level; int id; } ;


 struct cpu_cacheinfo* get_cpu_cacheinfo (int) ;

__attribute__((used)) static int get_cache_id(int cpu, int level)
{
 struct cpu_cacheinfo *ci = get_cpu_cacheinfo(cpu);
 int i;

 for (i = 0; i < ci->num_leaves; i++) {
  if (ci->info_list[i].level == level)
   return ci->info_list[i].id;
 }

 return -1;
}
