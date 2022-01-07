
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int pthread_t ;
struct TYPE_5__ {int queue_size; int started_count; int thread_count; int * threads; int * queue; int notify; int lock; } ;
typedef int IjkThreadPoolTask ;
typedef TYPE_1__ IjkThreadPoolContext ;


 int MAX_QUEUE ;
 int MAX_THREADS ;
 scalar_t__ calloc (int,int) ;
 int ijk_threadpool_destroy (TYPE_1__*,int ) ;
 int ijk_threadpool_free (TYPE_1__*) ;
 int ijk_threadpool_thread ;
 scalar_t__ pthread_cond_init (int *,int *) ;
 scalar_t__ pthread_create (int *,int *,int ,void*) ;
 scalar_t__ pthread_mutex_init (int *,int *) ;

IjkThreadPoolContext *ijk_threadpool_create(int thread_count, int queue_size, int flags)
{
    IjkThreadPoolContext *ctx;
    int i;

    if(thread_count <= 0 || thread_count > MAX_THREADS || queue_size <= 0 || queue_size > MAX_QUEUE) {
        return ((void*)0);
    }

    if((ctx = (IjkThreadPoolContext *)calloc(1, sizeof(IjkThreadPoolContext))) == ((void*)0)) {
        goto err;
    }

    ctx->queue_size = queue_size;


    ctx->threads = (pthread_t *)calloc(1, sizeof(pthread_t) * thread_count);
    ctx->queue = (IjkThreadPoolTask *)calloc
        (queue_size, sizeof(IjkThreadPoolTask));


    if((pthread_mutex_init(&(ctx->lock), ((void*)0)) != 0) ||
       (pthread_cond_init(&(ctx->notify), ((void*)0)) != 0) ||
       (ctx->threads == ((void*)0)) ||
       (ctx->queue == ((void*)0))) {
        goto err;
    }


    for(i = 0; i < thread_count; i++) {
        if(pthread_create(&(ctx->threads[i]), ((void*)0),
                          ijk_threadpool_thread, (void*)ctx) != 0) {
            ijk_threadpool_destroy(ctx, 0);
            return ((void*)0);
        }
        ctx->thread_count++;
        ctx->started_count++;
    }

    return ctx;

 err:
    if(ctx) {
        ijk_threadpool_free(ctx);
    }
    return ((void*)0);
}
