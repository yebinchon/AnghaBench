
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct seq_file {int dummy; } ;


 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int pvc_mutex ;
 int scroll_dir ;
 int scroll_interval ;
 int seq_printf (struct seq_file*,char*,int) ;

__attribute__((used)) static int pvc_scroll_proc_show(struct seq_file *m, void *v)
{
 mutex_lock(&pvc_mutex);
 seq_printf(m, "%d\n", scroll_dir * scroll_interval);
 mutex_unlock(&pvc_mutex);

 return 0;
}
