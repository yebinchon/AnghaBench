
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct seq_file {int dummy; } ;


 scalar_t__* progress_led ;
 int seq_printf (struct seq_file*,char*,scalar_t__*) ;

__attribute__((used)) static int ppc_rtas_progress_show(struct seq_file *m, void *v)
{
 if (progress_led[0])
  seq_printf(m, "%s\n", progress_led);
 return 0;
}
