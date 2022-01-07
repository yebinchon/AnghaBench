
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cache_info {int shared_cpu_map; } ;
typedef int ssize_t ;
typedef int cpumask_t ;


 int PAGE_SIZE ;
 int cpu_online_mask ;
 int cpumask_and (int *,int *,int ) ;
 int cpumask_pr_args (int *) ;
 int scnprintf (char*,int ,char*,int ) ;

__attribute__((used)) static ssize_t show_shared_cpu_map(struct cache_info *this_leaf, char *buf)
{
 cpumask_t shared_cpu_map;

 cpumask_and(&shared_cpu_map,
    &this_leaf->shared_cpu_map, cpu_online_mask);
 return scnprintf(buf, PAGE_SIZE, "%*pb\n",
    cpumask_pr_args(&shared_cpu_map));
}
