
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct seq_file {int dummy; } ;
typedef scalar_t__ loff_t ;


 scalar_t__ nr_cpu_ids ;

__attribute__((used)) static void *show_diag_stat_start(struct seq_file *m, loff_t *pos)
{
 return *pos <= nr_cpu_ids ? (void *)((unsigned long) *pos + 1) : ((void*)0);
}
