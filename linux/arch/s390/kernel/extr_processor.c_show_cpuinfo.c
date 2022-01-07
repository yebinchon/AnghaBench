
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct seq_file {int dummy; } ;


 int machine_has_cpu_mhz ;
 int seq_printf (struct seq_file*,char*,unsigned long) ;
 int show_cpu_mhz (struct seq_file*,unsigned long) ;
 int show_cpu_summary (struct seq_file*,void*) ;

__attribute__((used)) static int show_cpuinfo(struct seq_file *m, void *v)
{
 unsigned long n = (unsigned long) v - 1;

 if (!n)
  show_cpu_summary(m, v);
 if (!machine_has_cpu_mhz)
  return 0;
 seq_printf(m, "\ncpu number      : %ld\n", n);
 show_cpu_mhz(m, n);
 return 0;
}
