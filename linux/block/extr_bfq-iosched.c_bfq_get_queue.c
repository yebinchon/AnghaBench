
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct bio {int dummy; } ;
struct bfq_queue {int ref; int entity; } ;
struct bfq_io_cq {int ioprio; } ;
struct bfq_group {int dummy; } ;
struct bfq_data {struct bfq_queue oom_bfqq; TYPE_1__* queue; } ;
struct TYPE_4__ {int pid; } ;
struct TYPE_3__ {int node; } ;


 int GFP_NOWAIT ;
 int IOPRIO_PRIO_CLASS (int ) ;
 int IOPRIO_PRIO_DATA (int ) ;
 int __GFP_NOWARN ;
 int __GFP_ZERO ;
 int __bio_blkcg (struct bio*) ;
 struct bfq_queue** bfq_async_queue_prio (struct bfq_data*,struct bfq_group*,int const,int const) ;
 struct bfq_group* bfq_find_set_group (struct bfq_data*,int ) ;
 int bfq_init_bfqq (struct bfq_data*,struct bfq_queue*,struct bfq_io_cq*,int ,int) ;
 int bfq_init_entity (int *,struct bfq_group*) ;
 int bfq_log_bfqq (struct bfq_data*,struct bfq_queue*,char*,...) ;
 int bfq_pool ;
 TYPE_2__* current ;
 struct bfq_queue* kmem_cache_alloc_node (int ,int,int ) ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;

__attribute__((used)) static struct bfq_queue *bfq_get_queue(struct bfq_data *bfqd,
           struct bio *bio, bool is_sync,
           struct bfq_io_cq *bic)
{
 const int ioprio = IOPRIO_PRIO_DATA(bic->ioprio);
 const int ioprio_class = IOPRIO_PRIO_CLASS(bic->ioprio);
 struct bfq_queue **async_bfqq = ((void*)0);
 struct bfq_queue *bfqq;
 struct bfq_group *bfqg;

 rcu_read_lock();

 bfqg = bfq_find_set_group(bfqd, __bio_blkcg(bio));
 if (!bfqg) {
  bfqq = &bfqd->oom_bfqq;
  goto out;
 }

 if (!is_sync) {
  async_bfqq = bfq_async_queue_prio(bfqd, bfqg, ioprio_class,
        ioprio);
  bfqq = *async_bfqq;
  if (bfqq)
   goto out;
 }

 bfqq = kmem_cache_alloc_node(bfq_pool,
         GFP_NOWAIT | __GFP_ZERO | __GFP_NOWARN,
         bfqd->queue->node);

 if (bfqq) {
  bfq_init_bfqq(bfqd, bfqq, bic, current->pid,
         is_sync);
  bfq_init_entity(&bfqq->entity, bfqg);
  bfq_log_bfqq(bfqd, bfqq, "allocated");
 } else {
  bfqq = &bfqd->oom_bfqq;
  bfq_log_bfqq(bfqd, bfqq, "using oom bfqq");
  goto out;
 }





 if (async_bfqq) {
  bfqq->ref++;






  bfq_log_bfqq(bfqd, bfqq, "get_queue, bfqq not in async: %p, %d",
        bfqq, bfqq->ref);
  *async_bfqq = bfqq;
 }

out:
 bfqq->ref++;
 bfq_log_bfqq(bfqd, bfqq, "get_queue, at end: %p, %d", bfqq, bfqq->ref);
 rcu_read_unlock();
 return bfqq;
}
