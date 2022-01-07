
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct seq_file {int dummy; } ;
struct kernfs_open_file {int dummy; } ;


 int last_cmd_status ;
 int last_cmd_status_buf ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int rdtgroup_mutex ;
 int seq_buf_used (int *) ;
 int seq_printf (struct seq_file*,char*,int,int ) ;
 int seq_puts (struct seq_file*,char*) ;

__attribute__((used)) static int rdt_last_cmd_status_show(struct kernfs_open_file *of,
        struct seq_file *seq, void *v)
{
 int len;

 mutex_lock(&rdtgroup_mutex);
 len = seq_buf_used(&last_cmd_status);
 if (len)
  seq_printf(seq, "%.*s", len, last_cmd_status_buf);
 else
  seq_puts(seq, "ok\n");
 mutex_unlock(&rdtgroup_mutex);
 return 0;
}
