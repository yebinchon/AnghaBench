
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct seq_file {int dummy; } ;


 int atomic_read (int *) ;
 int irq_err_count ;
 int seq_printf (struct seq_file*,char*,int,char*,int ) ;

int arch_show_interrupts(struct seq_file *p, int prec)
{
 seq_printf(p, "%*s: %10u\n", prec, "ERR", atomic_read(&irq_err_count));
 return 0;
}
