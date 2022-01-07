
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct seq_file {int dummy; } ;
typedef scalar_t__ loff_t ;


 int cpu_online_mask ;
 scalar_t__ cpumask_first (int ) ;
 scalar_t__ cpumask_next (scalar_t__,int ) ;
 scalar_t__ nr_cpu_ids ;

__attribute__((used)) static void *c_start(struct seq_file *m, loff_t *pos)
{
 if (*pos == 0)
  *pos = cpumask_first(cpu_online_mask);
 else
  *pos = cpumask_next(*pos - 1, cpu_online_mask);
 if ((*pos) < nr_cpu_ids)
  return (void *)(unsigned long)(*pos + 1);
 return ((void*)0);
}
