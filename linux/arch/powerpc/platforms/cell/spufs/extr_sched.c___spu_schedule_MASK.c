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
struct spu_context {int /*<<< orphan*/  run_wq; } ;
struct spu {int node; int /*<<< orphan*/  alloc_state; int /*<<< orphan*/ * ctx; } ;
struct TYPE_2__ {int /*<<< orphan*/  list_mutex; int /*<<< orphan*/  nr_active; } ;

/* Variables and functions */
 int /*<<< orphan*/  SPU_USED ; 
 TYPE_1__* cbe_spu_info ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct spu_context*) ; 
 int /*<<< orphan*/  FUNC3 (struct spu*,struct spu_context*) ; 
 int /*<<< orphan*/  FUNC4 (struct spu_context*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC6(struct spu *spu, struct spu_context *ctx)
{
	int node = spu->node;
	int success = 0;

	FUNC4(ctx);

	FUNC0(&cbe_spu_info[node].list_mutex);
	if (spu->ctx == NULL) {
		FUNC3(spu, ctx);
		cbe_spu_info[node].nr_active++;
		spu->alloc_state = SPU_USED;
		success = 1;
	}
	FUNC1(&cbe_spu_info[node].list_mutex);

	if (success)
		FUNC5(&ctx->run_wq);
	else
		FUNC2(ctx);
}