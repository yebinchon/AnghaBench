
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct seq_file {int dummy; } ;


 int show_ipi_stats (struct seq_file*,int) ;

int arch_show_interrupts(struct seq_file *p, int prec)
{
 show_ipi_stats(p, prec);
 return 0;
}
