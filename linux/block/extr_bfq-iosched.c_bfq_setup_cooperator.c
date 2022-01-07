
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ parent; } ;
struct bfq_queue {TYPE_1__ entity; struct bfq_queue* new_bfqq; } ;
struct bfq_data {int nonrot_with_queueing; struct bfq_queue oom_bfqq; int in_serv_last_pos; struct bfq_queue* in_service_queue; } ;


 struct bfq_queue* bfq_find_close_cooperator (struct bfq_data*,struct bfq_queue*,int ) ;
 int bfq_io_struct_pos (void*,int) ;
 scalar_t__ bfq_may_be_close_cooperator (struct bfq_queue*,struct bfq_queue*) ;
 scalar_t__ bfq_rq_close_to_sector (void*,int,int ) ;
 struct bfq_queue* bfq_setup_merge (struct bfq_queue*,struct bfq_queue*) ;
 scalar_t__ bfq_too_late_for_merging (struct bfq_queue*) ;
 int bfq_tot_busy_queues (struct bfq_data*) ;
 scalar_t__ likely (int) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static struct bfq_queue *
bfq_setup_cooperator(struct bfq_data *bfqd, struct bfq_queue *bfqq,
       void *io_struct, bool request)
{
 struct bfq_queue *in_service_bfqq, *new_bfqq;
 if (likely(bfqd->nonrot_with_queueing))
  return ((void*)0);
 if (bfq_too_late_for_merging(bfqq))
  return ((void*)0);

 if (bfqq->new_bfqq)
  return bfqq->new_bfqq;

 if (!io_struct || unlikely(bfqq == &bfqd->oom_bfqq))
  return ((void*)0);


 if (bfq_tot_busy_queues(bfqd) == 1)
  return ((void*)0);

 in_service_bfqq = bfqd->in_service_queue;

 if (in_service_bfqq && in_service_bfqq != bfqq &&
     likely(in_service_bfqq != &bfqd->oom_bfqq) &&
     bfq_rq_close_to_sector(io_struct, request,
       bfqd->in_serv_last_pos) &&
     bfqq->entity.parent == in_service_bfqq->entity.parent &&
     bfq_may_be_close_cooperator(bfqq, in_service_bfqq)) {
  new_bfqq = bfq_setup_merge(bfqq, in_service_bfqq);
  if (new_bfqq)
   return new_bfqq;
 }





 new_bfqq = bfq_find_close_cooperator(bfqd, bfqq,
   bfq_io_struct_pos(io_struct, request));

 if (new_bfqq && likely(new_bfqq != &bfqd->oom_bfqq) &&
     bfq_may_be_close_cooperator(bfqq, new_bfqq))
  return bfq_setup_merge(bfqq, new_bfqq);

 return ((void*)0);
}
