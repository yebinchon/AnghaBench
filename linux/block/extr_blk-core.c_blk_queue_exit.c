
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct request_queue {int q_usage_counter; } ;


 int percpu_ref_put (int *) ;

void blk_queue_exit(struct request_queue *q)
{
 percpu_ref_put(&q->q_usage_counter);
}
