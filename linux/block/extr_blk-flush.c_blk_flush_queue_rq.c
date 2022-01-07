
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct request {int dummy; } ;


 int blk_mq_add_to_requeue_list (struct request*,int,int) ;

__attribute__((used)) static void blk_flush_queue_rq(struct request *rq, bool add_front)
{
 blk_mq_add_to_requeue_list(rq, add_front, 1);
}
