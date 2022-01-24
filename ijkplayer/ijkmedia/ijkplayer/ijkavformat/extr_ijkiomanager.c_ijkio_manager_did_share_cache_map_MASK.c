#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {TYPE_1__* ijkio_app_ctx; } ;
struct TYPE_4__ {int /*<<< orphan*/  mutex; scalar_t__ shared; } ;
typedef  TYPE_2__ IjkIOManagerContext ;

/* Variables and functions */
 int /*<<< orphan*/  AV_LOG_INFO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

void FUNC3(IjkIOManagerContext *h) {
    FUNC0(NULL, AV_LOG_INFO, "did share cache\n");
    if (!h || !h->ijkio_app_ctx) {
        return;
    }
    FUNC1(&h->ijkio_app_ctx->mutex);
    h->ijkio_app_ctx->shared = 0;
    FUNC2(&h->ijkio_app_ctx->mutex);
}