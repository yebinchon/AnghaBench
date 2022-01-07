
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ pending_count; scalar_t__ shutdown; size_t queue_head; int queue_size; int lock; int started_count; TYPE_1__* queue; int notify; } ;
struct TYPE_5__ {int out_arg; int in_arg; int (* function ) (int ,int ) ;} ;
struct TYPE_4__ {int out_arg; int in_arg; int (* function ) (int ,int ) ;} ;
typedef TYPE_2__ IjkThreadPoolTask ;
typedef TYPE_3__ IjkThreadPoolContext ;


 scalar_t__ IJK_IMMEDIATE_SHUTDOWN ;
 scalar_t__ IJK_LEISURELY_SHUTDOWN ;
 int pthread_cond_wait (int *,int *) ;
 int pthread_exit (int *) ;
 int pthread_mutex_lock (int *) ;
 int pthread_mutex_unlock (int *) ;
 int stub1 (int ,int ) ;

__attribute__((used)) static void *ijk_threadpool_thread(void *pool_ctx)
{
    IjkThreadPoolContext *ctx = (IjkThreadPoolContext *)pool_ctx;
    IjkThreadPoolTask task;

    for(;;) {
        pthread_mutex_lock(&(ctx->lock));

        while((ctx->pending_count == 0) && (!ctx->shutdown)) {
            pthread_cond_wait(&(ctx->notify), &(ctx->lock));
        }

        if((ctx->shutdown == IJK_IMMEDIATE_SHUTDOWN) ||
           ((ctx->shutdown == IJK_LEISURELY_SHUTDOWN) &&
            (ctx->pending_count == 0))) {
               break;
           }


        task.function = ctx->queue[ctx->queue_head].function;
        task.in_arg = ctx->queue[ctx->queue_head].in_arg;
        task.out_arg = ctx->queue[ctx->queue_head].out_arg;
        ctx->queue_head = (ctx->queue_head + 1) % ctx->queue_size;
        ctx->pending_count -= 1;

        pthread_mutex_unlock(&(ctx->lock));

        (*(task.function))(task.in_arg, task.out_arg);
    }

    ctx->started_count--;

    pthread_mutex_unlock(&(ctx->lock));
    pthread_exit(((void*)0));
    return(((void*)0));
}
