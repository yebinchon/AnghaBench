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
struct spu_context {int flags; int /*<<< orphan*/  state_mutex; int /*<<< orphan*/  stop_wq; struct spu* spu; } ;
struct spu {int /*<<< orphan*/  node; } ;

/* Variables and functions */
 int SPU_CREATE_NOSCHED ; 
 struct spu_context* FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct spu_context*) ; 
 int /*<<< orphan*/  FUNC3 (struct spu*,struct spu_context*) ; 
 int /*<<< orphan*/  FUNC4 (struct spu*,struct spu_context*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC6(struct spu_context *ctx, int force, int max_prio)
{
	struct spu *spu = ctx->spu;
	struct spu_context *new = NULL;

	if (spu) {
		new = FUNC0(max_prio, spu->node);
		if (new || force) {
			FUNC4(spu, ctx, new == NULL);
			if (new) {
				if (new->flags & SPU_CREATE_NOSCHED)
					FUNC5(&new->stop_wq);
				else {
					FUNC2(ctx);
					FUNC3(spu, new);
					/* this one can't easily be made
					   interruptible */
					FUNC1(&ctx->state_mutex);
				}
			}
		}
	}

	return new != NULL;
}