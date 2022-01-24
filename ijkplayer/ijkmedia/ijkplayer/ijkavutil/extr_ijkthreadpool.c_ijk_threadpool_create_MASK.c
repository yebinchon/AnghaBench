#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  pthread_t ;
struct TYPE_5__ {int queue_size; int /*<<< orphan*/  started_count; int /*<<< orphan*/  thread_count; int /*<<< orphan*/ * threads; int /*<<< orphan*/ * queue; int /*<<< orphan*/  notify; int /*<<< orphan*/  lock; } ;
typedef  int /*<<< orphan*/  IjkThreadPoolTask ;
typedef  TYPE_1__ IjkThreadPoolContext ;

/* Variables and functions */
 int MAX_QUEUE ; 
 int MAX_THREADS ; 
 scalar_t__ FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  ijk_threadpool_thread ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,void*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

IjkThreadPoolContext *FUNC6(int thread_count, int queue_size, int flags)
{
    IjkThreadPoolContext *ctx;
    int i;

    if(thread_count <= 0 || thread_count > MAX_THREADS || queue_size <= 0 || queue_size > MAX_QUEUE) {
        return NULL;
    }

    if((ctx = (IjkThreadPoolContext *)FUNC0(1, sizeof(IjkThreadPoolContext))) == NULL) {
        goto err;
    }

    ctx->queue_size = queue_size;

    /* Allocate thread and task queue */
    ctx->threads = (pthread_t *)FUNC0(1, sizeof(pthread_t) * thread_count);
    ctx->queue = (IjkThreadPoolTask *)FUNC0
        (queue_size, sizeof(IjkThreadPoolTask));

    /* Initialize mutex and conditional variable first */
    if((FUNC5(&(ctx->lock), NULL) != 0) ||
       (FUNC3(&(ctx->notify), NULL) != 0) ||
       (ctx->threads == NULL) ||
       (ctx->queue == NULL)) {
        goto err;
    }

    /* Start worker threads */
    for(i = 0; i < thread_count; i++) {
        if(FUNC4(&(ctx->threads[i]), NULL,
                          ijk_threadpool_thread, (void*)ctx) != 0) {
            FUNC1(ctx, 0);
            return NULL;
        }
        ctx->thread_count++;
        ctx->started_count++;
    }

    return ctx;

 err:
    if(ctx) {
        FUNC2(ctx);
    }
    return NULL;
}