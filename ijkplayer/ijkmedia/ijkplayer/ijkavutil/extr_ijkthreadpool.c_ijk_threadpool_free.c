
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ started_count; int notify; int lock; struct TYPE_4__* queue; struct TYPE_4__* threads; } ;
typedef TYPE_1__ IjkThreadPoolContext ;


 int free (TYPE_1__*) ;
 int pthread_cond_destroy (int *) ;
 int pthread_mutex_destroy (int *) ;
 int pthread_mutex_lock (int *) ;

int ijk_threadpool_free(IjkThreadPoolContext *ctx)
{
    if(ctx == ((void*)0) || ctx->started_count > 0) {
        return -1;
    }


    if(ctx->threads) {
        free(ctx->threads);
        free(ctx->queue);




        pthread_mutex_lock(&(ctx->lock));
        pthread_mutex_destroy(&(ctx->lock));
        pthread_cond_destroy(&(ctx->notify));
    }
    free(ctx);
    return 0;
}
