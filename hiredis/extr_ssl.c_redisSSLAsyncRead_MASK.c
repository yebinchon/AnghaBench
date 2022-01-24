#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
struct TYPE_11__ {scalar_t__ pendingWrite; scalar_t__ wantRead; } ;
typedef  TYPE_1__ redisSSLContext ;
struct TYPE_12__ {TYPE_1__* privdata; } ;
typedef  TYPE_2__ redisContext ;
struct TYPE_13__ {TYPE_2__ c; } ;
typedef  TYPE_3__ redisAsyncContext ;

/* Variables and functions */
 int REDIS_ERR ; 
 int /*<<< orphan*/  FUNC0 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*) ; 
 int FUNC3 (TYPE_2__*) ; 
 int FUNC4 (TYPE_2__*,int*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_3__*) ; 

__attribute__((used)) static void FUNC6(redisAsyncContext *ac) {
    int rv;
    redisSSLContext *rssl = ac->c.privdata;
    redisContext *c = &ac->c;

    rssl->wantRead = 0;

    if (rssl->pendingWrite) {
        int done;

        /* This is probably just a write event */
        rssl->pendingWrite = 0;
        rv = FUNC4(c, &done);
        if (rv == REDIS_ERR) {
            FUNC2(ac);
            return;
        } else if (!done) {
            FUNC1(ac);
        }
    }

    rv = FUNC3(c);
    if (rv == REDIS_ERR) {
        FUNC2(ac);
    } else {
        FUNC0(ac);
        FUNC5(ac);
    }
}