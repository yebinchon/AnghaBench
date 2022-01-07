
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int id; } ;
struct node {TYPE_1__ dev; } ;
struct device {int dummy; } ;
typedef int ssize_t ;
typedef int cpumask_var_t ;


 int BUILD_BUG_ON (int) ;
 int GFP_KERNEL ;
 int NR_CPUS ;
 int PAGE_SIZE ;
 int alloc_cpumask_var (int *,int ) ;
 int cpu_online_mask ;
 int cpumap_print_to_pagebuf (int,char*,int ) ;
 int cpumask_and (int ,int ,int ) ;
 int cpumask_of_node (int ) ;
 int free_cpumask_var (int ) ;
 struct node* to_node (struct device*) ;

__attribute__((used)) static ssize_t node_read_cpumap(struct device *dev, bool list, char *buf)
{
 ssize_t n;
 cpumask_var_t mask;
 struct node *node_dev = to_node(dev);


 BUILD_BUG_ON((NR_CPUS/32 * 9) > (PAGE_SIZE-1));

 if (!alloc_cpumask_var(&mask, GFP_KERNEL))
  return 0;

 cpumask_and(mask, cpumask_of_node(node_dev->dev.id), cpu_online_mask);
 n = cpumap_print_to_pagebuf(list, buf, mask);
 free_cpumask_var(mask);

 return n;
}
