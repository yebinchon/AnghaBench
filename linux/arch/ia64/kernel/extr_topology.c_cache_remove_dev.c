
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_4__ ;
typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct kobject {int dummy; } ;
struct TYPE_5__ {scalar_t__ parent; } ;
struct TYPE_7__ {TYPE_1__ kobj; } ;
struct TYPE_6__ {unsigned long num_cache_leaves; TYPE_1__ kobj; } ;


 TYPE_4__* LEAF_KOBJECT_PTR (unsigned int,unsigned long) ;
 TYPE_3__* all_cpu_cache_info ;
 int cpu_cache_sysfs_exit (unsigned int) ;
 int kobject_put (TYPE_1__*) ;
 int memset (TYPE_1__*,int ,int) ;

__attribute__((used)) static int cache_remove_dev(unsigned int cpu)
{
 unsigned long i;

 for (i = 0; i < all_cpu_cache_info[cpu].num_cache_leaves; i++)
  kobject_put(&(LEAF_KOBJECT_PTR(cpu,i)->kobj));

 if (all_cpu_cache_info[cpu].kobj.parent) {
  kobject_put(&all_cpu_cache_info[cpu].kobj);
  memset(&all_cpu_cache_info[cpu].kobj,
   0,
   sizeof(struct kobject));
 }

 cpu_cache_sysfs_exit(cpu);

 return 0;
}
