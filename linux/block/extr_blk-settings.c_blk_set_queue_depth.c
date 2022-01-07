
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct request_queue {unsigned int queue_depth; } ;


 int rq_qos_queue_depth_changed (struct request_queue*) ;

void blk_set_queue_depth(struct request_queue *q, unsigned int depth)
{
 q->queue_depth = depth;
 rq_qos_queue_depth_changed(q);
}
