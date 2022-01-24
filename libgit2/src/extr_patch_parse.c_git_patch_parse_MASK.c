#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_19__   TYPE_4__ ;
typedef  struct TYPE_18__   TYPE_3__ ;
typedef  struct TYPE_17__   TYPE_2__ ;
typedef  struct TYPE_16__   TYPE_1__ ;

/* Type definitions */
struct TYPE_17__ {int /*<<< orphan*/  flags; int /*<<< orphan*/  new_prefix; int /*<<< orphan*/  old_prefix; } ;
struct TYPE_16__ {size_t remain_len; size_t remain; } ;
struct TYPE_19__ {TYPE_2__ diff_opts; TYPE_1__ parse_ctx; TYPE_3__* delta; int /*<<< orphan*/  (* free_fn ) (TYPE_4__*) ;} ;
struct TYPE_18__ {int nfiles; TYPE_4__ base; int /*<<< orphan*/  new_prefix; int /*<<< orphan*/  old_prefix; int /*<<< orphan*/  status; TYPE_4__* ctx; } ;
typedef  TYPE_3__ git_patch_parsed ;
typedef  TYPE_4__ git_patch_parse_ctx ;
typedef  TYPE_4__ git_patch ;
typedef  int /*<<< orphan*/  git_diff_delta ;

/* Variables and functions */
 int /*<<< orphan*/  GIT_DELTA_MODIFIED ; 
 int /*<<< orphan*/  GIT_DIFF_SHOW_BINARY ; 
 int /*<<< orphan*/  FUNC0 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int FUNC3 (TYPE_3__*) ; 
 void* FUNC4 (int,int) ; 
 int FUNC5 (TYPE_3__*,TYPE_4__*) ; 
 int FUNC6 (TYPE_3__*,TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_4__*) ; 

int FUNC8(
	git_patch **out,
	git_patch_parse_ctx *ctx)
{
	git_patch_parsed *patch;
	size_t start, used;
	int error = 0;

	FUNC2(out && ctx);

	*out = NULL;

	patch = FUNC4(1, sizeof(git_patch_parsed));
	FUNC0(patch);

	patch->ctx = ctx;
	FUNC1(patch->ctx);

	patch->base.free_fn = patch_parsed__free;

	patch->base.delta = FUNC4(1, sizeof(git_diff_delta));
	FUNC0(patch->base.delta);

	patch->base.delta->status = GIT_DELTA_MODIFIED;
	patch->base.delta->nfiles = 2;

	start = ctx->parse_ctx.remain_len;

	if ((error = FUNC6(patch, ctx)) < 0 ||
		(error = FUNC5(patch, ctx)) < 0 ||
		(error = FUNC3(patch)) < 0)
		goto done;

	used = start - ctx->parse_ctx.remain_len;
	ctx->parse_ctx.remain += used;

	patch->base.diff_opts.old_prefix = patch->old_prefix;
	patch->base.diff_opts.new_prefix = patch->new_prefix;
	patch->base.diff_opts.flags |= GIT_DIFF_SHOW_BINARY;

	FUNC1(&patch->base);
	*out = &patch->base;

done:
	if (error < 0)
		FUNC7(&patch->base);

	return error;
}