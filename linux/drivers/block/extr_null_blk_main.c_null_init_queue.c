
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nullb_queue {int dev; int queue_depth; int wait; } ;
struct nullb {int dev; int queue_depth; } ;


 int BUG_ON (int) ;
 int init_waitqueue_head (int *) ;

__attribute__((used)) static void null_init_queue(struct nullb *nullb, struct nullb_queue *nq)
{
 BUG_ON(!nullb);
 BUG_ON(!nq);

 init_waitqueue_head(&nq->wait);
 nq->queue_depth = nullb->queue_depth;
 nq->dev = nullb->dev;
}
