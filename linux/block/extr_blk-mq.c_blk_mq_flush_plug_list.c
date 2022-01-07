
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_1__ ;


struct request_queue {int dummy; } ;
struct request {int queuelist; struct blk_mq_hw_ctx* mq_hctx; struct blk_mq_ctx* mq_ctx; struct request_queue* q; } ;
struct blk_plug {int rq_count; scalar_t__ multiple_queues; int mq_list; } ;
struct blk_mq_hw_ctx {int dummy; } ;
struct blk_mq_ctx {int dummy; } ;
struct TYPE_9__ {int next; } ;


 int BUG_ON (int) ;
 int LIST_HEAD (TYPE_1__) ;
 int blk_mq_sched_insert_requests (struct blk_mq_hw_ctx*,struct blk_mq_ctx*,TYPE_1__*,int) ;
 TYPE_1__ list ;
 int list_add_tail (int *,TYPE_1__*) ;
 int list_del_init (int *) ;
 int list_empty (TYPE_1__*) ;
 struct request* list_entry_rq (int ) ;
 int list_sort (int *,TYPE_1__*,int ) ;
 int list_splice_init (int *,TYPE_1__*) ;
 int plug_rq_cmp ;
 TYPE_1__ rq_list ;
 int trace_block_unplug (struct request_queue*,unsigned int,int) ;

void blk_mq_flush_plug_list(struct blk_plug *plug, bool from_schedule)
{
 struct blk_mq_hw_ctx *this_hctx;
 struct blk_mq_ctx *this_ctx;
 struct request_queue *this_q;
 struct request *rq;
 LIST_HEAD(list);
 LIST_HEAD(rq_list);
 unsigned int depth;

 list_splice_init(&plug->mq_list, &list);

 if (plug->rq_count > 2 && plug->multiple_queues)
  list_sort(((void*)0), &list, plug_rq_cmp);

 plug->rq_count = 0;

 this_q = ((void*)0);
 this_hctx = ((void*)0);
 this_ctx = ((void*)0);
 depth = 0;

 while (!list_empty(&list)) {
  rq = list_entry_rq(list.next);
  list_del_init(&rq->queuelist);
  BUG_ON(!rq->q);
  if (rq->mq_hctx != this_hctx || rq->mq_ctx != this_ctx) {
   if (this_hctx) {
    trace_block_unplug(this_q, depth, !from_schedule);
    blk_mq_sched_insert_requests(this_hctx, this_ctx,
        &rq_list,
        from_schedule);
   }

   this_q = rq->q;
   this_ctx = rq->mq_ctx;
   this_hctx = rq->mq_hctx;
   depth = 0;
  }

  depth++;
  list_add_tail(&rq->queuelist, &rq_list);
 }





 if (this_hctx) {
  trace_block_unplug(this_q, depth, !from_schedule);
  blk_mq_sched_insert_requests(this_hctx, this_ctx, &rq_list,
      from_schedule);
 }
}
