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
typedef  int /*<<< orphan*/  redisReplyObjectFunctions ;
struct TYPE_5__ {int ridx; int /*<<< orphan*/ * buf; int /*<<< orphan*/  maxbuf; int /*<<< orphan*/ * fn; } ;
typedef  TYPE_1__ redisReader ;

/* Variables and functions */
 int /*<<< orphan*/  REDIS_READER_MAX_BUF ; 
 TYPE_1__* FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/ * FUNC2 () ; 

redisReader *FUNC3(redisReplyObjectFunctions *fn) {
    redisReader *r;

    r = FUNC0(1,sizeof(redisReader));
    if (r == NULL)
        return NULL;

    r->fn = fn;
    r->buf = FUNC2();
    r->maxbuf = REDIS_READER_MAX_BUF;
    if (r->buf == NULL) {
        FUNC1(r);
        return NULL;
    }

    r->ridx = -1;
    return r;
}