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
struct TYPE_4__ {scalar_t__ started_count; int /*<<< orphan*/  notify; int /*<<< orphan*/  lock; struct TYPE_4__* queue; struct TYPE_4__* threads; } ;
typedef  TYPE_1__ IjkThreadPoolContext ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

int FUNC4(IjkThreadPoolContext *ctx)
{
    if(ctx == NULL || ctx->started_count > 0) {
        return -1;
    }

    /* Did we manage to allocate ? */
    if(ctx->threads) {
        FUNC0(ctx->threads);
        FUNC0(ctx->queue);

        /* Because we allocate pool->threads after initializing the
         mutex and condition variable, we're sure they're
         initialized. Let's lock the mutex just in case. */
        FUNC3(&(ctx->lock));
        FUNC2(&(ctx->lock));
        FUNC1(&(ctx->notify));
    }
    FUNC0(ctx);
    return 0;
}