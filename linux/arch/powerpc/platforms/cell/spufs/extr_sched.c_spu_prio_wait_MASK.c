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
struct spu_context {int flags; int /*<<< orphan*/  stop_wq; int /*<<< orphan*/  state_mutex; } ;
struct TYPE_2__ {int /*<<< orphan*/  runq_lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int SPU_CREATE_NOSCHED ; 
 int /*<<< orphan*/  TASK_INTERRUPTIBLE ; 
 int /*<<< orphan*/  TASK_RUNNING ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct spu_context*) ; 
 int /*<<< orphan*/  FUNC4 (struct spu_context*) ; 
 int /*<<< orphan*/  current ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 TYPE_1__* spu_prio ; 
 int /*<<< orphan*/  wait ; 

__attribute__((used)) static void FUNC13(struct spu_context *ctx)
{
	FUNC1(wait);

	/*
	 * The caller must explicitly wait for a context to be loaded
	 * if the nosched flag is set.  If NOSCHED is not set, the caller
	 * queues the context and waits for an spu event or error.
	 */
	FUNC0(!(ctx->flags & SPU_CREATE_NOSCHED));

	FUNC11(&spu_prio->runq_lock);
	FUNC7(&ctx->stop_wq, &wait, TASK_INTERRUPTIBLE);
	if (!FUNC10(current)) {
		FUNC3(ctx);
		FUNC12(&spu_prio->runq_lock);
		FUNC6(&ctx->state_mutex);
		FUNC9();
		FUNC5(&ctx->state_mutex);
		FUNC11(&spu_prio->runq_lock);
		FUNC4(ctx);
	}
	FUNC12(&spu_prio->runq_lock);
	FUNC2(TASK_RUNNING);
	FUNC8(&ctx->stop_wq, &wait);
}