
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int shutdown; int thread_count; int * threads; int lock; int notify; } ;
typedef TYPE_1__ IjkThreadPoolContext ;


 int IJK_THREADPOOL_INVALID ;
 int IJK_THREADPOOL_LOCK_FAILURE ;
 int IJK_THREADPOOL_SHUTDOWN ;
 int IJK_THREADPOOL_THREAD_FAILURE ;
 int ijk_threadpool_freep (TYPE_1__**) ;
 scalar_t__ pthread_cond_broadcast (int *) ;
 scalar_t__ pthread_join (int ,int *) ;
 scalar_t__ pthread_mutex_lock (int *) ;
 scalar_t__ pthread_mutex_unlock (int *) ;

int ijk_threadpool_destroy(IjkThreadPoolContext *ctx, int flags)
{
    int i, err = 0;

    if(ctx == ((void*)0)) {
        return IJK_THREADPOOL_INVALID;
    }

    if(pthread_mutex_lock(&(ctx->lock)) != 0) {
        return IJK_THREADPOOL_LOCK_FAILURE;
    }

    do {

        if(ctx->shutdown) {
            err = IJK_THREADPOOL_SHUTDOWN;
            break;
        }

        ctx->shutdown = flags;


        if((pthread_cond_broadcast(&(ctx->notify)) != 0) ||
           (pthread_mutex_unlock(&(ctx->lock)) != 0)) {
            err = IJK_THREADPOOL_LOCK_FAILURE;
            break;
        }


        for(i = 0; i < ctx->thread_count; i++) {
            if(pthread_join(ctx->threads[i], ((void*)0)) != 0) {
                err = IJK_THREADPOOL_THREAD_FAILURE;
            }
        }
    } while(0);


    if(!err) {
        return ijk_threadpool_freep(&ctx);
    }
    return err;
}
