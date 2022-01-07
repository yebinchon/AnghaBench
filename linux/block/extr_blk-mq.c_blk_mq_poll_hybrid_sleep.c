
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct request_queue {unsigned int poll_nsec; } ;
struct request {int rq_flags; } ;
struct hrtimer_sleeper {int timer; scalar_t__ task; } ;
struct blk_mq_hw_ctx {int dummy; } ;
typedef unsigned int ktime_t ;
typedef enum hrtimer_mode { ____Placeholder_hrtimer_mode } hrtimer_mode ;


 int CLOCK_MONOTONIC ;
 int HRTIMER_MODE_ABS ;
 int HRTIMER_MODE_REL ;
 scalar_t__ MQ_RQ_COMPLETE ;
 int RQF_MQ_POLL_SLEPT ;
 int TASK_RUNNING ;
 int TASK_UNINTERRUPTIBLE ;
 int __set_current_state (int ) ;
 unsigned int blk_mq_poll_nsecs (struct request_queue*,struct blk_mq_hw_ctx*,struct request*) ;
 scalar_t__ blk_mq_rq_state (struct request*) ;
 int current ;
 int destroy_hrtimer_on_stack (int *) ;
 int hrtimer_cancel (int *) ;
 int hrtimer_init_sleeper_on_stack (struct hrtimer_sleeper*,int ,int) ;
 int hrtimer_set_expires (int *,unsigned int) ;
 int hrtimer_sleeper_start_expires (struct hrtimer_sleeper*,int) ;
 int io_schedule () ;
 int set_current_state (int ) ;
 int signal_pending (int ) ;

__attribute__((used)) static bool blk_mq_poll_hybrid_sleep(struct request_queue *q,
         struct blk_mq_hw_ctx *hctx,
         struct request *rq)
{
 struct hrtimer_sleeper hs;
 enum hrtimer_mode mode;
 unsigned int nsecs;
 ktime_t kt;

 if (rq->rq_flags & RQF_MQ_POLL_SLEPT)
  return 0;







 if (q->poll_nsec > 0)
  nsecs = q->poll_nsec;
 else
  nsecs = blk_mq_poll_nsecs(q, hctx, rq);

 if (!nsecs)
  return 0;

 rq->rq_flags |= RQF_MQ_POLL_SLEPT;





 kt = nsecs;

 mode = HRTIMER_MODE_REL;
 hrtimer_init_sleeper_on_stack(&hs, CLOCK_MONOTONIC, mode);
 hrtimer_set_expires(&hs.timer, kt);

 do {
  if (blk_mq_rq_state(rq) == MQ_RQ_COMPLETE)
   break;
  set_current_state(TASK_UNINTERRUPTIBLE);
  hrtimer_sleeper_start_expires(&hs, mode);
  if (hs.task)
   io_schedule();
  hrtimer_cancel(&hs.timer);
  mode = HRTIMER_MODE_ABS;
 } while (hs.task && !signal_pending(current));

 __set_current_state(TASK_RUNNING);
 destroy_hrtimer_on_stack(&hs.timer);
 return 1;
}
