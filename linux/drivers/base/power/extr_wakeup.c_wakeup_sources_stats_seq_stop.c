
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct seq_file {int* private; } ;


 int srcu_read_unlock (int *,int) ;
 int wakeup_srcu ;

__attribute__((used)) static void wakeup_sources_stats_seq_stop(struct seq_file *m, void *v)
{
 int *srcuidx = m->private;

 srcu_read_unlock(&wakeup_srcu, *srcuidx);
}
