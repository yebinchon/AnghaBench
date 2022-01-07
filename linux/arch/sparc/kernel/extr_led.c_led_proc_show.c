
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct seq_file {int dummy; } ;


 int AUXIO_LED ;
 int get_auxio () ;
 int seq_puts (struct seq_file*,char*) ;

__attribute__((used)) static int led_proc_show(struct seq_file *m, void *v)
{
 if (get_auxio() & AUXIO_LED)
  seq_puts(m, "on\n");
 else
  seq_puts(m, "off\n");
 return 0;
}
