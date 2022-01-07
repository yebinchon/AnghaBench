
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct kobject {int dummy; } ;
struct TYPE_2__ {int kobj; scalar_t__ num_cache_leaves; int * cache_leaves; } ;


 TYPE_1__* all_cpu_cache_info ;
 int kfree (int *) ;
 int memset (int *,int ,int) ;

__attribute__((used)) static void cpu_cache_sysfs_exit(unsigned int cpu)
{
 kfree(all_cpu_cache_info[cpu].cache_leaves);
 all_cpu_cache_info[cpu].cache_leaves = ((void*)0);
 all_cpu_cache_info[cpu].num_cache_leaves = 0;
 memset(&all_cpu_cache_info[cpu].kobj, 0, sizeof(struct kobject));
 return;
}
