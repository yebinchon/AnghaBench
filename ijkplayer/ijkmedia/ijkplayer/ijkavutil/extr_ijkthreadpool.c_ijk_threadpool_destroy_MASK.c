#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int shutdown; int thread_count; int /*<<< orphan*/ * threads; int /*<<< orphan*/  lock; int /*<<< orphan*/  notify; } ;
typedef  TYPE_1__ IjkThreadPoolContext ;

/* Variables and functions */
 int IJK_THREADPOOL_INVALID ; 
 int IJK_THREADPOOL_LOCK_FAILURE ; 
 int IJK_THREADPOOL_SHUTDOWN ; 
 int IJK_THREADPOOL_THREAD_FAILURE ; 
 int FUNC0 (TYPE_1__**) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 

int FUNC5(IjkThreadPoolContext *ctx, int flags)
{
    int i, err = 0;

    if(ctx == NULL) {
        return IJK_THREADPOOL_INVALID;
    }

    if(FUNC3(&(ctx->lock)) != 0) {
        return IJK_THREADPOOL_LOCK_FAILURE;
    }

    do {
        /* Already shutting down */
        if(ctx->shutdown) {
            err = IJK_THREADPOOL_SHUTDOWN;
            break;
        }

        ctx->shutdown = flags;

        /* Wake up all worker threads */
        if((FUNC1(&(ctx->notify)) != 0) ||
           (FUNC4(&(ctx->lock)) != 0)) {
            err = IJK_THREADPOOL_LOCK_FAILURE;
            break;
        }

        /* Join all worker thread */
        for(i = 0; i < ctx->thread_count; i++) {
            if(FUNC2(ctx->threads[i], NULL) != 0) {
                err = IJK_THREADPOOL_THREAD_FAILURE;
            }
        }
    } while(0);

    /* Only if everything went well do we deallocate the pool */
    if(!err) {
        return FUNC0(&ctx);
    }
    return err;
}