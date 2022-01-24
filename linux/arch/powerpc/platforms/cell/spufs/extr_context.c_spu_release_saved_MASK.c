#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct spu_context {scalar_t__ state; int /*<<< orphan*/  sched_flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  SPU_SCHED_SPU_RUN ; 
 int /*<<< orphan*/  SPU_SCHED_WAS_ACTIVE ; 
 scalar_t__ SPU_STATE_SAVED ; 
 int /*<<< orphan*/  FUNC1 (struct spu_context*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct spu_context*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

void FUNC5(struct spu_context *ctx)
{
	FUNC0(ctx->state != SPU_STATE_SAVED);

	if (FUNC3(SPU_SCHED_WAS_ACTIVE, &ctx->sched_flags) &&
			FUNC4(SPU_SCHED_SPU_RUN, &ctx->sched_flags))
		FUNC1(ctx, 0);

	FUNC2(ctx);
}