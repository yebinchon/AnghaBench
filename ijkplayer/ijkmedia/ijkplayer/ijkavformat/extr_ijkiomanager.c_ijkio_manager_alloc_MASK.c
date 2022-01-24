#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_3__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int fd; void* cache_info_map; int /*<<< orphan*/  threadpool_ctx; int /*<<< orphan*/  mutex; } ;
struct TYPE_4__ {TYPE_3__* ijkio_app_ctx; void* ijk_ctx_map; void* opaque; } ;
typedef  TYPE_1__ IjkIOManagerContext ;

/* Variables and functions */
 scalar_t__ FUNC0 (int,int) ; 
 void* FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__**,void*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC5(IjkIOManagerContext **ph, void *opaque)
{
    IjkIOManagerContext *h = NULL;

    h = (IjkIOManagerContext *)FUNC0(1, sizeof(IjkIOManagerContext));
    if (!h)
        return -1;

    h->opaque = opaque;
    h->ijk_ctx_map = FUNC1();

    FUNC3(&h->ijkio_app_ctx, opaque);

    FUNC4(&h->ijkio_app_ctx->mutex, NULL);
    h->ijkio_app_ctx->threadpool_ctx = FUNC2(5, 5, 0);
    h->ijkio_app_ctx->cache_info_map = FUNC1();
    h->ijkio_app_ctx->fd             = -1;
    *ph = h;
    return 0;
}