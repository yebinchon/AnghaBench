
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct seq_file {int dummy; } ;
struct request_queue {int pm_only; } ;


 int atomic_read (int *) ;
 int seq_printf (struct seq_file*,char*,int ) ;

__attribute__((used)) static int queue_pm_only_show(void *data, struct seq_file *m)
{
 struct request_queue *q = data;

 seq_printf(m, "%d\n", atomic_read(&q->pm_only));
 return 0;
}
