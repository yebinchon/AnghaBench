
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct request_queue {TYPE_1__* mq_ops; } ;
struct request {struct request_queue* q; } ;
struct TYPE_2__ {int (* complete ) (struct request*) ;} ;


 int stub1 (struct request*) ;

__attribute__((used)) static void __blk_mq_complete_request_remote(void *data)
{
 struct request *rq = data;
 struct request_queue *q = rq->q;

 q->mq_ops->complete(rq);
}
