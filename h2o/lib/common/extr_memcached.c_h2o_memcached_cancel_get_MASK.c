#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int /*<<< orphan*/ * cb; } ;
struct TYPE_9__ {TYPE_1__ get; } ;
struct TYPE_10__ {int /*<<< orphan*/  pending; TYPE_2__ data; } ;
typedef  TYPE_3__ h2o_memcached_req_t ;
struct TYPE_11__ {int /*<<< orphan*/  mutex; } ;
typedef  TYPE_4__ h2o_memcached_context_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_3__*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

void FUNC5(h2o_memcached_context_t *ctx, h2o_memcached_req_t *req)
{
    int do_free = 0;

    FUNC3(&ctx->mutex);
    req->data.get.cb = NULL;
    if (FUNC1(&req->pending)) {
        FUNC2(&req->pending);
        do_free = 1;
    }
    FUNC4(&ctx->mutex);

    if (do_free)
        FUNC0(req);
}