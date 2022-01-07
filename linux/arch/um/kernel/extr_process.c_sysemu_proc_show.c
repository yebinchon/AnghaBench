
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct seq_file {int dummy; } ;


 int get_using_sysemu () ;
 int seq_printf (struct seq_file*,char*,int ) ;

__attribute__((used)) static int sysemu_proc_show(struct seq_file *m, void *v)
{
 seq_printf(m, "%d\n", get_using_sysemu());
 return 0;
}
