#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {int pendingWrite; scalar_t__ wantRead; } ;
typedef  TYPE_1__ redisSSLContext ;
struct TYPE_11__ {TYPE_1__* privdata; } ;
typedef  TYPE_2__ redisContext ;
struct TYPE_12__ {TYPE_2__ c; } ;
typedef  TYPE_3__ redisAsyncContext ;

/* Variables and functions */
 int REDIS_ERR ; 
 int /*<<< orphan*/  FUNC0 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*) ; 
 int FUNC4 (TYPE_2__*,int*) ; 

__attribute__((used)) static void FUNC5(redisAsyncContext *ac) {
    int rv, done = 0;
    redisSSLContext *rssl = ac->c.privdata;
    redisContext *c = &ac->c;

    rssl->pendingWrite = 0;
    rv = FUNC4(c, &done);
    if (rv == REDIS_ERR) {
        FUNC3(ac);
        return;
    }

    if (!done) {
        if (rssl->wantRead) {
            /* Need to read-before-write */
            rssl->pendingWrite = 1;
            FUNC2(ac);
        } else {
            /* No extra reads needed, just need to write more */
            FUNC1(ac);
        }
    } else {
        /* Already done! */
        FUNC2(ac);
    }

    /* Always reschedule a read */
    FUNC0(ac);
}