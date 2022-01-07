
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct seq_file {int dummy; } ;


 int seq_printf (struct seq_file*,char*,int) ;
 int uml_exitcode ;

__attribute__((used)) static int exitcode_proc_show(struct seq_file *m, void *v)
{
 int val;





 val = uml_exitcode;
 seq_printf(m, "%d\n", val);
 return 0;
}
