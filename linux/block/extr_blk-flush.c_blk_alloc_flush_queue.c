
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct request_queue {int dummy; } ;
struct request {int dummy; } ;
struct blk_flush_queue {int flush_data_in_flight; int * flush_queue; void* flush_rq; int mq_flush_lock; } ;
typedef int gfp_t ;


 int INIT_LIST_HEAD (int *) ;
 int cache_line_size () ;
 int kfree (struct blk_flush_queue*) ;
 void* kzalloc_node (int,int ,int) ;
 int round_up (int,int ) ;
 int spin_lock_init (int *) ;

struct blk_flush_queue *blk_alloc_flush_queue(struct request_queue *q,
  int node, int cmd_size, gfp_t flags)
{
 struct blk_flush_queue *fq;
 int rq_sz = sizeof(struct request);

 fq = kzalloc_node(sizeof(*fq), flags, node);
 if (!fq)
  goto fail;

 spin_lock_init(&fq->mq_flush_lock);

 rq_sz = round_up(rq_sz + cmd_size, cache_line_size());
 fq->flush_rq = kzalloc_node(rq_sz, flags, node);
 if (!fq->flush_rq)
  goto fail_rq;

 INIT_LIST_HEAD(&fq->flush_queue[0]);
 INIT_LIST_HEAD(&fq->flush_queue[1]);
 INIT_LIST_HEAD(&fq->flush_data_in_flight);

 return fq;

 fail_rq:
 kfree(fq);
 fail:
 return ((void*)0);
}
