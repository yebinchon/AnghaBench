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
struct spu_gang {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  tstamp; int /*<<< orphan*/  util_state; } ;
struct spu_context {TYPE_1__ stats; int /*<<< orphan*/  aff_list; int /*<<< orphan*/  rq; int /*<<< orphan*/  owner; int /*<<< orphan*/ * ops; int /*<<< orphan*/  state; int /*<<< orphan*/  run_wq; int /*<<< orphan*/  mfc_wq; int /*<<< orphan*/  stop_wq; int /*<<< orphan*/  wbox_wq; int /*<<< orphan*/  ibox_wq; int /*<<< orphan*/  run_mutex; int /*<<< orphan*/  state_mutex; int /*<<< orphan*/  kref; int /*<<< orphan*/  mapping_lock; int /*<<< orphan*/  mmio_lock; int /*<<< orphan*/  csa; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  SPU_STATE_SAVED ; 
 int /*<<< orphan*/  SPU_UTIL_IDLE_LOADED ; 
 int /*<<< orphan*/  FUNC1 (struct spu_context*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  current ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct spu_context*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 struct spu_context* FUNC8 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  nr_spu_contexts ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  spu_backing_ops ; 
 int /*<<< orphan*/  FUNC11 (struct spu_gang*,struct spu_context*) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (struct spu_context*) ; 

struct spu_context *FUNC14(struct spu_gang *gang)
{
	struct spu_context *ctx;

	ctx = FUNC8(sizeof *ctx, GFP_KERNEL);
	if (!ctx)
		goto out;
	/* Binding to physical processor deferred
	 * until spu_activate().
	 */
	if (FUNC12(&ctx->csa))
		goto out_free;
	FUNC10(&ctx->mmio_lock);
	FUNC9(&ctx->mapping_lock);
	FUNC6(&ctx->kref);
	FUNC9(&ctx->state_mutex);
	FUNC9(&ctx->run_mutex);
	FUNC4(&ctx->ibox_wq);
	FUNC4(&ctx->wbox_wq);
	FUNC4(&ctx->stop_wq);
	FUNC4(&ctx->mfc_wq);
	FUNC4(&ctx->run_wq);
	ctx->state = SPU_STATE_SAVED;
	ctx->ops = &spu_backing_ops;
	ctx->owner = FUNC3(current);
	FUNC0(&ctx->rq);
	FUNC0(&ctx->aff_list);
	if (gang)
		FUNC11(gang, ctx);

	FUNC1(ctx);
	FUNC13(ctx);
	ctx->stats.util_state = SPU_UTIL_IDLE_LOADED;
	ctx->stats.tstamp = FUNC7();

	FUNC2(&nr_spu_contexts);
	goto out;
out_free:
	FUNC5(ctx);
	ctx = NULL;
out:
	return ctx;
}