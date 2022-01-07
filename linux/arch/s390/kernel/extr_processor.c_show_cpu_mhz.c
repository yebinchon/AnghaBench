
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct seq_file {int dummy; } ;
struct cpu_info {int cpu_mhz_static; int cpu_mhz_dynamic; } ;


 int cpu_info ;
 struct cpu_info* per_cpu_ptr (int *,unsigned long) ;
 int seq_printf (struct seq_file*,char*,int ) ;

__attribute__((used)) static void show_cpu_mhz(struct seq_file *m, unsigned long n)
{
 struct cpu_info *c = per_cpu_ptr(&cpu_info, n);

 seq_printf(m, "cpu MHz dynamic : %d\n", c->cpu_mhz_dynamic);
 seq_printf(m, "cpu MHz static  : %d\n", c->cpu_mhz_static);
}
