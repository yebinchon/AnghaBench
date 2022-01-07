
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct seq_file {int dummy; } ;
struct cpuinfo_x86 {int initial_apicid; int apicid; int booted_cores; int cpu_core_id; int phys_proc_id; } ;


 int cpumask_weight (int ) ;
 int seq_printf (struct seq_file*,char*,int ) ;
 int topology_core_cpumask (unsigned int) ;

__attribute__((used)) static void show_cpuinfo_core(struct seq_file *m, struct cpuinfo_x86 *c,
         unsigned int cpu)
{
}
