
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct request_queue {int nr_hw_queues; scalar_t__ elevator; TYPE_1__* mq_ops; } ;
struct request {TYPE_2__* mq_hctx; int queuelist; } ;
struct TYPE_8__ {int prev; } ;
struct blk_plug {unsigned int rq_count; TYPE_3__ mq_list; } ;
struct blk_mq_alloc_data {int cmd_flags; TYPE_2__* hctx; int flags; } ;
struct bio {int bi_opf; } ;
typedef int blk_qc_t ;
struct TYPE_7__ {int dispatch_busy; } ;
struct TYPE_6__ {scalar_t__ commit_rqs; } ;


 unsigned int BLK_MAX_REQUEST_COUNT ;
 scalar_t__ BLK_PLUG_FLUSH_SIZE ;
 int BLK_QC_T_NONE ;
 int REQ_NOWAIT ;
 int __blk_queue_split (struct request_queue*,struct bio**,unsigned int*) ;
 int bio_integrity_prep (struct bio*) ;
 int bio_wouldblock_error (struct bio*) ;
 int blk_add_rq_to_plug (struct blk_plug*,struct request*) ;
 scalar_t__ blk_attempt_plug_merge (struct request_queue*,struct bio*,unsigned int,struct request**) ;
 int blk_flush_plug_list (struct blk_plug*,int) ;
 int blk_insert_flush (struct request*) ;
 int blk_mq_bio_to_request (struct request*,struct bio*,unsigned int) ;
 struct request* blk_mq_get_request (struct request_queue*,struct bio*,struct blk_mq_alloc_data*) ;
 struct blk_plug* blk_mq_plug (struct request_queue*,struct bio*) ;
 int blk_mq_run_hw_queue (TYPE_2__*,int) ;
 scalar_t__ blk_mq_sched_bio_merge (struct request_queue*,struct bio*,unsigned int) ;
 int blk_mq_sched_insert_request (struct request*,int,int,int) ;
 int blk_mq_try_issue_directly (TYPE_2__*,struct request*,int *) ;
 int blk_queue_bounce (struct request_queue*,struct bio**) ;
 int blk_queue_nomerges (struct request_queue*) ;
 int blk_queue_nonrot (struct request_queue*) ;
 scalar_t__ blk_rq_bytes (struct request*) ;
 int list_del_init (int *) ;
 scalar_t__ list_empty (TYPE_3__*) ;
 struct request* list_entry_rq (int ) ;
 int op_is_flush (int) ;
 int op_is_sync (int) ;
 int request_to_qc_t (TYPE_2__*,struct request*) ;
 int rq_qos_cleanup (struct request_queue*,struct bio*) ;
 int rq_qos_throttle (struct request_queue*,struct bio*) ;
 int rq_qos_track (struct request_queue*,struct request*,struct bio*) ;
 int trace_block_getrq (struct request_queue*,struct bio*,int) ;
 int trace_block_plug (struct request_queue*) ;
 int trace_block_unplug (struct request_queue*,int,int) ;
 scalar_t__ unlikely (int const) ;

__attribute__((used)) static blk_qc_t blk_mq_make_request(struct request_queue *q, struct bio *bio)
{
 const int is_sync = op_is_sync(bio->bi_opf);
 const int is_flush_fua = op_is_flush(bio->bi_opf);
 struct blk_mq_alloc_data data = { .flags = 0};
 struct request *rq;
 struct blk_plug *plug;
 struct request *same_queue_rq = ((void*)0);
 unsigned int nr_segs;
 blk_qc_t cookie;

 blk_queue_bounce(q, &bio);
 __blk_queue_split(q, &bio, &nr_segs);

 if (!bio_integrity_prep(bio))
  return BLK_QC_T_NONE;

 if (!is_flush_fua && !blk_queue_nomerges(q) &&
     blk_attempt_plug_merge(q, bio, nr_segs, &same_queue_rq))
  return BLK_QC_T_NONE;

 if (blk_mq_sched_bio_merge(q, bio, nr_segs))
  return BLK_QC_T_NONE;

 rq_qos_throttle(q, bio);

 data.cmd_flags = bio->bi_opf;
 rq = blk_mq_get_request(q, bio, &data);
 if (unlikely(!rq)) {
  rq_qos_cleanup(q, bio);
  if (bio->bi_opf & REQ_NOWAIT)
   bio_wouldblock_error(bio);
  return BLK_QC_T_NONE;
 }

 trace_block_getrq(q, bio, bio->bi_opf);

 rq_qos_track(q, rq, bio);

 cookie = request_to_qc_t(data.hctx, rq);

 blk_mq_bio_to_request(rq, bio, nr_segs);

 plug = blk_mq_plug(q, bio);
 if (unlikely(is_flush_fua)) {

  blk_insert_flush(rq);
  blk_mq_run_hw_queue(data.hctx, 1);
 } else if (plug && (q->nr_hw_queues == 1 || q->mq_ops->commit_rqs ||
    !blk_queue_nonrot(q))) {







  unsigned int request_count = plug->rq_count;
  struct request *last = ((void*)0);

  if (!request_count)
   trace_block_plug(q);
  else
   last = list_entry_rq(plug->mq_list.prev);

  if (request_count >= BLK_MAX_REQUEST_COUNT || (last &&
      blk_rq_bytes(last) >= BLK_PLUG_FLUSH_SIZE)) {
   blk_flush_plug_list(plug, 0);
   trace_block_plug(q);
  }

  blk_add_rq_to_plug(plug, rq);
 } else if (q->elevator) {
  blk_mq_sched_insert_request(rq, 0, 1, 1);
 } else if (plug && !blk_queue_nomerges(q)) {







  if (list_empty(&plug->mq_list))
   same_queue_rq = ((void*)0);
  if (same_queue_rq) {
   list_del_init(&same_queue_rq->queuelist);
   plug->rq_count--;
  }
  blk_add_rq_to_plug(plug, rq);
  trace_block_plug(q);

  if (same_queue_rq) {
   data.hctx = same_queue_rq->mq_hctx;
   trace_block_unplug(q, 1, 1);
   blk_mq_try_issue_directly(data.hctx, same_queue_rq,
     &cookie);
  }
 } else if ((q->nr_hw_queues > 1 && is_sync) ||
   !data.hctx->dispatch_busy) {
  blk_mq_try_issue_directly(data.hctx, rq, &cookie);
 } else {
  blk_mq_sched_insert_request(rq, 0, 1, 1);
 }

 return cookie;
}
