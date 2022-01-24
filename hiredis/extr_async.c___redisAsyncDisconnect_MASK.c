#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int flags; } ;
typedef  TYPE_1__ redisContext ;
struct TYPE_8__ {scalar_t__ err; int /*<<< orphan*/  replies; TYPE_1__ c; } ;
typedef  TYPE_2__ redisAsyncContext ;

/* Variables and functions */
 int REDIS_DISCONNECTING ; 
 int REDIS_ERR ; 
 int REDIS_NO_AUTO_FREE ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 int FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 

void FUNC5(redisAsyncContext *ac) {
    redisContext *c = &(ac->c);

    /* Make sure error is accessible if there is any */
    FUNC1(ac);

    if (ac->err == 0) {
        /* For clean disconnects, there should be no pending callbacks. */
        int ret = FUNC3(&ac->replies,NULL);
        FUNC4(ret == REDIS_ERR);
    } else {
        /* Disconnection is caused by an error, make sure that pending
         * callbacks cannot call new commands. */
        c->flags |= REDIS_DISCONNECTING;
    }

    /* cleanup event library on disconnect.
     * this is safe to call multiple times */
    FUNC0(ac);

    /* For non-clean disconnects, __redisAsyncFree() will execute pending
     * callbacks with a NULL-reply. */
    if (!(c->flags & REDIS_NO_AUTO_FREE)) {
      FUNC2(ac);
    }
}