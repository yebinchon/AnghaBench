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
typedef  int /*<<< orphan*/  int64_t ;
struct TYPE_5__ {scalar_t__ ijkio_manager_ctx; void* ijkio_inject_opaque; } ;
typedef  TYPE_1__ FFPlayer ;

/* Variables and functions */
 int /*<<< orphan*/  FFP_OPT_CATEGORY_FORMAT ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ijkio_app_func_event ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__*) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,int /*<<< orphan*/ ) ; 

void *FUNC4(FFPlayer *ffp, void *opaque)
{
    if (!ffp)
        return NULL;
    void *prev_weak_thiz = ffp->ijkio_inject_opaque;
    ffp->ijkio_inject_opaque = opaque;

    FUNC2(&ffp->ijkio_manager_ctx);
    FUNC1(&ffp->ijkio_manager_ctx, ffp);
    FUNC3(ffp->ijkio_manager_ctx, ijkio_app_func_event);
    FUNC0(ffp, FFP_OPT_CATEGORY_FORMAT, "ijkiomanager", (int64_t)(intptr_t)ffp->ijkio_manager_ctx);

    return prev_weak_thiz;
}