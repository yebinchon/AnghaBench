
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct seq_file {int dummy; } ;


 int seq_puts (struct seq_file*,char*) ;

__attribute__((used)) static int fake_ide_media_proc_show(struct seq_file *m, void *v)
{
 seq_puts(m, "disk\n");
 return 0;
}
