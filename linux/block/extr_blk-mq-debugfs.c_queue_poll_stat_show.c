
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct seq_file {int dummy; } ;
struct request_queue {int * poll_stat; } ;


 int BLK_MQ_POLL_STATS_BKTS ;
 int print_stat (struct seq_file*,int *) ;
 int seq_printf (struct seq_file*,char*,int) ;
 int seq_puts (struct seq_file*,char*) ;

__attribute__((used)) static int queue_poll_stat_show(void *data, struct seq_file *m)
{
 struct request_queue *q = data;
 int bucket;

 for (bucket = 0; bucket < (BLK_MQ_POLL_STATS_BKTS / 2); bucket++) {
  seq_printf(m, "read  (%d Bytes): ", 1 << (9 + bucket));
  print_stat(m, &q->poll_stat[2 * bucket]);
  seq_puts(m, "\n");

  seq_printf(m, "write (%d Bytes): ", 1 << (9 + bucket));
  print_stat(m, &q->poll_stat[2 * bucket + 1]);
  seq_puts(m, "\n");
 }
 return 0;
}
