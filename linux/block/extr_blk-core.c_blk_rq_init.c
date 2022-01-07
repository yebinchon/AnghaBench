
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct request_queue {int dummy; } ;
struct request {int tag; int internal_tag; int ref; int * part; int start_time_ns; int rb_node; int hash; scalar_t__ __sector; struct request_queue* q; int queuelist; } ;
typedef scalar_t__ sector_t ;


 int INIT_HLIST_NODE (int *) ;
 int INIT_LIST_HEAD (int *) ;
 int RB_CLEAR_NODE (int *) ;
 int ktime_get_ns () ;
 int memset (struct request*,int ,int) ;
 int refcount_set (int *,int) ;

void blk_rq_init(struct request_queue *q, struct request *rq)
{
 memset(rq, 0, sizeof(*rq));

 INIT_LIST_HEAD(&rq->queuelist);
 rq->q = q;
 rq->__sector = (sector_t) -1;
 INIT_HLIST_NODE(&rq->hash);
 RB_CLEAR_NODE(&rq->rb_node);
 rq->tag = -1;
 rq->internal_tag = -1;
 rq->start_time_ns = ktime_get_ns();
 rq->part = ((void*)0);
 refcount_set(&rq->ref, 1);
}
