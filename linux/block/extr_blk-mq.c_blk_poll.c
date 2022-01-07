
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct request_queue {TYPE_1__* mq_ops; struct blk_mq_hw_ctx** queue_hw_ctx; int queue_flags; } ;
struct blk_mq_hw_ctx {int poll_success; int poll_invoked; int poll_considered; } ;
typedef int blk_qc_t ;
struct TYPE_5__ {long state; scalar_t__ plug; } ;
struct TYPE_4__ {int (* poll ) (struct blk_mq_hw_ctx*) ;} ;


 int QUEUE_FLAG_POLL ;
 long TASK_RUNNING ;
 int __set_current_state (long) ;
 int blk_flush_plug_list (scalar_t__,int) ;
 scalar_t__ blk_mq_poll_hybrid (struct request_queue*,struct blk_mq_hw_ctx*,int ) ;
 size_t blk_qc_t_to_queue_num (int ) ;
 int blk_qc_t_valid (int ) ;
 int cpu_relax () ;
 TYPE_2__* current ;
 int need_resched () ;
 scalar_t__ signal_pending_state (long,TYPE_2__*) ;
 int stub1 (struct blk_mq_hw_ctx*) ;
 int test_bit (int ,int *) ;

int blk_poll(struct request_queue *q, blk_qc_t cookie, bool spin)
{
 struct blk_mq_hw_ctx *hctx;
 long state;

 if (!blk_qc_t_valid(cookie) ||
     !test_bit(QUEUE_FLAG_POLL, &q->queue_flags))
  return 0;

 if (current->plug)
  blk_flush_plug_list(current->plug, 0);

 hctx = q->queue_hw_ctx[blk_qc_t_to_queue_num(cookie)];
 if (blk_mq_poll_hybrid(q, hctx, cookie))
  return 1;

 hctx->poll_considered++;

 state = current->state;
 do {
  int ret;

  hctx->poll_invoked++;

  ret = q->mq_ops->poll(hctx);
  if (ret > 0) {
   hctx->poll_success++;
   __set_current_state(TASK_RUNNING);
   return ret;
  }

  if (signal_pending_state(state, current))
   __set_current_state(TASK_RUNNING);

  if (current->state == TASK_RUNNING)
   return 1;
  if (ret < 0 || !spin)
   break;
  cpu_relax();
 } while (!need_resched());

 __set_current_state(TASK_RUNNING);
 return 0;
}
