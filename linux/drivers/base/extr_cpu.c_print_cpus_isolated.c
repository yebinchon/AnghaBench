
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;
typedef int cpumask_var_t ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int HK_FLAG_DOMAIN ;
 int PAGE_SIZE ;
 int alloc_cpumask_var (int *,int ) ;
 int cpu_possible_mask ;
 int cpumask_andnot (int ,int ,int ) ;
 int cpumask_pr_args (int ) ;
 int free_cpumask_var (int ) ;
 int housekeeping_cpumask (int ) ;
 int scnprintf (char*,int,char*,int ) ;

__attribute__((used)) static ssize_t print_cpus_isolated(struct device *dev,
      struct device_attribute *attr, char *buf)
{
 int n = 0, len = PAGE_SIZE-2;
 cpumask_var_t isolated;

 if (!alloc_cpumask_var(&isolated, GFP_KERNEL))
  return -ENOMEM;

 cpumask_andnot(isolated, cpu_possible_mask,
         housekeeping_cpumask(HK_FLAG_DOMAIN));
 n = scnprintf(buf, len, "%*pbl\n", cpumask_pr_args(isolated));

 free_cpumask_var(isolated);

 return n;
}
