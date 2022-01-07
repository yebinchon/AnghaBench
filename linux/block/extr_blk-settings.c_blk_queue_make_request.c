
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct request_queue {int limits; int * make_request_fn; int nr_requests; } ;
typedef int make_request_fn ;


 int BLKDEV_MAX_RQ ;
 int blk_queue_dma_alignment (struct request_queue*,int) ;
 int blk_set_default_limits (int *) ;

void blk_queue_make_request(struct request_queue *q, make_request_fn *mfn)
{



 q->nr_requests = BLKDEV_MAX_RQ;

 q->make_request_fn = mfn;
 blk_queue_dma_alignment(q, 511);

 blk_set_default_limits(&q->limits);
}
