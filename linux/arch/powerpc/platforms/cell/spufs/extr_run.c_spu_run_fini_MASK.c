#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u32 ;
struct spu_context {int /*<<< orphan*/  sched_flags; TYPE_1__* ops; } ;
struct TYPE_2__ {int /*<<< orphan*/  (* npc_read ) (struct spu_context*) ;int /*<<< orphan*/  (* status_read ) (struct spu_context*) ;} ;

/* Variables and functions */
 int ERESTARTSYS ; 
 int /*<<< orphan*/  SPU_SCHED_SPU_RUN ; 
 int /*<<< orphan*/  SPU_UTIL_IDLE_LOADED ; 
 int /*<<< orphan*/  SWITCH_LOG_EXIT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  current ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct spu_context*) ; 
 int /*<<< orphan*/  FUNC3 (struct spu_context*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,struct spu_context*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct spu_context*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct spu_context*) ; 
 int /*<<< orphan*/  FUNC7 (struct spu_context*) ; 

__attribute__((used)) static int FUNC8(struct spu_context *ctx, u32 *npc,
			       u32 *status)
{
	int ret = 0;

	FUNC2(ctx);

	*status = ctx->ops->status_read(ctx);
	*npc = ctx->ops->npc_read(ctx);

	FUNC5(ctx, SPU_UTIL_IDLE_LOADED);
	FUNC0(SPU_SCHED_SPU_RUN, &ctx->sched_flags);
	FUNC4(NULL, ctx, SWITCH_LOG_EXIT, *status);
	FUNC3(ctx);

	if (FUNC1(current))
		ret = -ERESTARTSYS;

	return ret;
}