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
struct spu_context {int prio; int /*<<< orphan*/  rq; } ;
struct TYPE_2__ {int /*<<< orphan*/  bitmap; int /*<<< orphan*/ * runq; int /*<<< orphan*/  nr_waiting; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 TYPE_1__* spu_prio ; 
 int /*<<< orphan*/  spusched_timer ; 

__attribute__((used)) static void FUNC4(struct spu_context *ctx)
{
	int prio = ctx->prio;

	if (!FUNC3(&ctx->rq)) {
		if (!--spu_prio->nr_waiting)
			FUNC1(&spusched_timer);
		FUNC2(&ctx->rq);

		if (FUNC3(&spu_prio->runq[prio]))
			FUNC0(prio, spu_prio->bitmap);
	}
}