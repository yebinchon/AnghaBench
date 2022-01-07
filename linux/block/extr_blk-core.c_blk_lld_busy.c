
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct request_queue {TYPE_1__* mq_ops; } ;
struct TYPE_2__ {int (* busy ) (struct request_queue*) ;} ;


 scalar_t__ queue_is_mq (struct request_queue*) ;
 int stub1 (struct request_queue*) ;

int blk_lld_busy(struct request_queue *q)
{
 if (queue_is_mq(q) && q->mq_ops->busy)
  return q->mq_ops->busy(q);

 return 0;
}
