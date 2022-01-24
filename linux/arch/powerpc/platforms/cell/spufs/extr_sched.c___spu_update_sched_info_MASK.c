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
struct spu_context {int /*<<< orphan*/  last_ran; int /*<<< orphan*/  cpus_allowed; int /*<<< orphan*/  policy; int /*<<< orphan*/  prio; int /*<<< orphan*/  tid; int /*<<< orphan*/  rq; } ;
struct TYPE_2__ {int /*<<< orphan*/  cpus_ptr; int /*<<< orphan*/  policy; int /*<<< orphan*/  static_prio; int /*<<< orphan*/  prio; int /*<<< orphan*/  pid; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 TYPE_1__* current ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 

void FUNC5(struct spu_context *ctx)
{
	/*
	 * assert that the context is not on the runqueue, so it is safe
	 * to change its scheduling parameters.
	 */
	FUNC0(!FUNC2(&ctx->rq));

	/*
	 * 32-Bit assignments are atomic on powerpc, and we don't care about
	 * memory ordering here because retrieving the controlling thread is
	 * per definition racy.
	 */
	ctx->tid = current->pid;

	/*
	 * We do our own priority calculations, so we normally want
	 * ->static_prio to start with. Unfortunately this field
	 * contains junk for threads with a realtime scheduling
	 * policy so we have to look at ->prio in this case.
	 */
	if (FUNC4(current->prio))
		ctx->prio = current->prio;
	else
		ctx->prio = current->static_prio;
	ctx->policy = current->policy;

	/*
	 * TO DO: the context may be loaded, so we may need to activate
	 * it again on a different node. But it shouldn't hurt anything
	 * to update its parameters, because we know that the scheduler
	 * is not actively looking at this field, since it is not on the
	 * runqueue. The context will be rescheduled on the proper node
	 * if it is timesliced or preempted.
	 */
	FUNC1(&ctx->cpus_allowed, current->cpus_ptr);

	/* Save the current cpu id for spu interrupt routing. */
	ctx->last_ran = FUNC3();
}