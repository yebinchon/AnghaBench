
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct seq_file {int dummy; } ;


 unsigned long sal_platform_features ;
 int seq_puts (struct seq_file*,char*) ;

__attribute__((used)) static int proc_salinfo_show(struct seq_file *m, void *v)
{
 unsigned long data = (unsigned long)v;
 seq_puts(m, (sal_platform_features & data) ? "1\n" : "0\n");
 return 0;
}
