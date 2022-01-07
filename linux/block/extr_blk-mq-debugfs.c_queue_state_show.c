
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct seq_file {int dummy; } ;
struct request_queue {int queue_flags; } ;


 int ARRAY_SIZE (int ) ;
 int blk_flags_show (struct seq_file*,int ,int ,int ) ;
 int blk_queue_flag_name ;
 int seq_puts (struct seq_file*,char*) ;

__attribute__((used)) static int queue_state_show(void *data, struct seq_file *m)
{
 struct request_queue *q = data;

 blk_flags_show(m, q->queue_flags, blk_queue_flag_name,
         ARRAY_SIZE(blk_queue_flag_name));
 seq_puts(m, "\n");
 return 0;
}
