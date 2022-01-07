
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct seq_file {int dummy; } ;
struct request_queue {int * write_hints; } ;


 int BLK_MAX_WRITE_HINTS ;
 int seq_printf (struct seq_file*,char*,int,int ) ;

__attribute__((used)) static int queue_write_hint_show(void *data, struct seq_file *m)
{
 struct request_queue *q = data;
 int i;

 for (i = 0; i < BLK_MAX_WRITE_HINTS; i++)
  seq_printf(m, "hint%d: %llu\n", i, q->write_hints[i]);

 return 0;
}
