
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct spu_context {int flags; int stop_wq; int state_mutex; } ;
struct TYPE_2__ {int runq_lock; } ;


 int BUG_ON (int) ;
 int DEFINE_WAIT (int ) ;
 int SPU_CREATE_NOSCHED ;
 int TASK_INTERRUPTIBLE ;
 int TASK_RUNNING ;
 int __set_current_state (int ) ;
 int __spu_add_to_rq (struct spu_context*) ;
 int __spu_del_from_rq (struct spu_context*) ;
 int current ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int prepare_to_wait_exclusive (int *,int *,int ) ;
 int remove_wait_queue (int *,int *) ;
 int schedule () ;
 int signal_pending (int ) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 TYPE_1__* spu_prio ;
 int wait ;

__attribute__((used)) static void spu_prio_wait(struct spu_context *ctx)
{
 DEFINE_WAIT(wait);






 BUG_ON(!(ctx->flags & SPU_CREATE_NOSCHED));

 spin_lock(&spu_prio->runq_lock);
 prepare_to_wait_exclusive(&ctx->stop_wq, &wait, TASK_INTERRUPTIBLE);
 if (!signal_pending(current)) {
  __spu_add_to_rq(ctx);
  spin_unlock(&spu_prio->runq_lock);
  mutex_unlock(&ctx->state_mutex);
  schedule();
  mutex_lock(&ctx->state_mutex);
  spin_lock(&spu_prio->runq_lock);
  __spu_del_from_rq(ctx);
 }
 spin_unlock(&spu_prio->runq_lock);
 __set_current_state(TASK_RUNNING);
 remove_wait_queue(&ctx->stop_wq, &wait);
}
