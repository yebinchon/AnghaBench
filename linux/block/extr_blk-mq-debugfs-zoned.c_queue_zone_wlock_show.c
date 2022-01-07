
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct seq_file {int dummy; } ;
struct request_queue {unsigned int nr_zones; int seq_zones_wlock; } ;


 int seq_printf (struct seq_file*,char*,unsigned int) ;
 scalar_t__ test_bit (unsigned int,int ) ;

int queue_zone_wlock_show(void *data, struct seq_file *m)
{
 struct request_queue *q = data;
 unsigned int i;

 if (!q->seq_zones_wlock)
  return 0;

 for (i = 0; i < q->nr_zones; i++)
  if (test_bit(i, q->seq_zones_wlock))
   seq_printf(m, "%u\n", i);

 return 0;
}
