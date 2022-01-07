
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct request_queue {TYPE_1__* elevator; } ;
struct TYPE_4__ {struct bfq_queue** priv; int icq; } ;
struct request {TYPE_2__ elv; struct bio* bio; struct request_queue* q; } ;
struct bio {int dummy; } ;
struct bfq_queue {int saved_in_large_burst; struct bfq_queue* bic; int ref; int allocated; } ;
struct bfq_io_cq {int saved_in_large_burst; struct bfq_io_cq* bic; int ref; int allocated; } ;
struct bfq_data {scalar_t__ burst_size; struct bfq_queue oom_bfqq; } ;
struct TYPE_3__ {struct bfq_data* elevator_data; } ;


 scalar_t__ bfq_bfqq_coop (struct bfq_queue*) ;
 scalar_t__ bfq_bfqq_in_large_burst (struct bfq_queue*) ;
 scalar_t__ bfq_bfqq_just_created (struct bfq_queue*) ;
 int bfq_bfqq_resume_state (struct bfq_queue*,struct bfq_data*,struct bfq_queue*,int) ;
 scalar_t__ bfq_bfqq_split_coop (struct bfq_queue*) ;
 int bfq_bic_update_cgroup (struct bfq_queue*,struct bio*) ;
 int bfq_check_ioprio_change (struct bfq_queue*,struct bio*) ;
 struct bfq_queue* bfq_get_bfqq_handle_split (struct bfq_data*,struct bfq_queue*,struct bio*,int,int const,int*) ;
 int bfq_handle_burst (struct bfq_data*,struct bfq_queue*) ;
 int bfq_log_bfqq (struct bfq_data*,struct bfq_queue*,char*,...) ;
 struct bfq_queue* bfq_split_bfqq (struct bfq_queue*,struct bfq_queue*) ;
 scalar_t__ bfq_tot_busy_queues (struct bfq_data*) ;
 int bfqq_process_refs (struct bfq_queue*) ;
 struct bfq_queue* icq_to_bic (int ) ;
 scalar_t__ likely (int) ;
 int rq_is_sync (struct request*) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static struct bfq_queue *bfq_init_rq(struct request *rq)
{
 struct request_queue *q = rq->q;
 struct bio *bio = rq->bio;
 struct bfq_data *bfqd = q->elevator->elevator_data;
 struct bfq_io_cq *bic;
 const int is_sync = rq_is_sync(rq);
 struct bfq_queue *bfqq;
 bool new_queue = 0;
 bool bfqq_already_existing = 0, split = 0;

 if (unlikely(!rq->elv.icq))
  return ((void*)0);
 if (rq->elv.priv[1])
  return rq->elv.priv[1];

 bic = icq_to_bic(rq->elv.icq);

 bfq_check_ioprio_change(bic, bio);

 bfq_bic_update_cgroup(bic, bio);

 bfqq = bfq_get_bfqq_handle_split(bfqd, bic, bio, 0, is_sync,
      &new_queue);

 if (likely(!new_queue)) {

  if (bfq_bfqq_coop(bfqq) && bfq_bfqq_split_coop(bfqq)) {
   bfq_log_bfqq(bfqd, bfqq, "breaking apart bfqq");


   if (bfq_bfqq_in_large_burst(bfqq))
    bic->saved_in_large_burst = 1;

   bfqq = bfq_split_bfqq(bic, bfqq);
   split = 1;

   if (!bfqq)
    bfqq = bfq_get_bfqq_handle_split(bfqd, bic, bio,
         1, is_sync,
         ((void*)0));
   else
    bfqq_already_existing = 1;
  }
 }

 bfqq->allocated++;
 bfqq->ref++;
 bfq_log_bfqq(bfqd, bfqq, "get_request %p: bfqq %p, %d",
       rq, bfqq, bfqq->ref);

 rq->elv.priv[0] = bic;
 rq->elv.priv[1] = bfqq;







 if (likely(bfqq != &bfqd->oom_bfqq) && bfqq_process_refs(bfqq) == 1) {
  bfqq->bic = bic;
  if (split) {





   bfq_bfqq_resume_state(bfqq, bfqd, bic,
           bfqq_already_existing);
  }
 }
 if (unlikely(bfq_bfqq_just_created(bfqq) &&
       (bfqd->burst_size > 0 ||
        bfq_tot_busy_queues(bfqd) == 0)))
  bfq_handle_burst(bfqd, bfqq);

 return bfqq;
}
