
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
 int PAGE_SIZE ;
 int alloc_cpumask_var (int *,int ) ;
 int cpu_online_mask ;
 int cpu_possible_mask ;
 int cpumask_andnot (int ,int ,int ) ;
 int cpumask_pr_args (int ) ;
 int free_cpumask_var (int ) ;
 int nr_cpu_ids ;
 int scnprintf (char*,int,char*,int ) ;
 scalar_t__ snprintf (char*,int,char*,...) ;
 int total_cpus ;

__attribute__((used)) static ssize_t print_cpus_offline(struct device *dev,
      struct device_attribute *attr, char *buf)
{
 int n = 0, len = PAGE_SIZE-2;
 cpumask_var_t offline;


 if (!alloc_cpumask_var(&offline, GFP_KERNEL))
  return -ENOMEM;
 cpumask_andnot(offline, cpu_possible_mask, cpu_online_mask);
 n = scnprintf(buf, len, "%*pbl", cpumask_pr_args(offline));
 free_cpumask_var(offline);


 if (total_cpus && nr_cpu_ids < total_cpus) {
  if (n && n < len)
   buf[n++] = ',';

  if (nr_cpu_ids == total_cpus-1)
   n += snprintf(&buf[n], len - n, "%u", nr_cpu_ids);
  else
   n += snprintf(&buf[n], len - n, "%u-%d",
            nr_cpu_ids, total_cpus-1);
 }

 n += snprintf(&buf[n], len - n, "\n");
 return n;
}
