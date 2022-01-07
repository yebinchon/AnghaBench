
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bfq_queue {int allocated; } ;


 int bfq_put_queue (struct bfq_queue*) ;

__attribute__((used)) static void bfq_finish_requeue_request_body(struct bfq_queue *bfqq)
{
 bfqq->allocated--;

 bfq_put_queue(bfqq);
}
