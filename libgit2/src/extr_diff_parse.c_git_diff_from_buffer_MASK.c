#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_18__   TYPE_5__ ;
typedef  struct TYPE_17__   TYPE_3__ ;
typedef  struct TYPE_16__   TYPE_2__ ;
typedef  struct TYPE_15__   TYPE_1__ ;

/* Type definitions */
struct TYPE_18__ {int /*<<< orphan*/  deltas; } ;
struct TYPE_15__ {scalar_t__ remain_len; } ;
struct TYPE_16__ {TYPE_5__ base; int /*<<< orphan*/  patches; TYPE_1__ parse_ctx; } ;
typedef  TYPE_2__ git_patch_parse_ctx ;
struct TYPE_17__ {struct TYPE_17__* delta; } ;
typedef  TYPE_3__ git_patch ;
typedef  TYPE_2__ git_diff_parsed ;
typedef  TYPE_5__ git_diff ;

/* Variables and functions */
 int GIT_ENOTFOUND ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 TYPE_2__* FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int FUNC4 (TYPE_3__**,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*) ; 
 TYPE_2__* FUNC6 (char const*,size_t,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,TYPE_3__*) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ *) ; 

int FUNC9(
	git_diff **out,
	const char *content,
	size_t content_len)
{
	git_diff_parsed *diff;
	git_patch *patch;
	git_patch_parse_ctx *ctx = NULL;
	int error = 0;

	*out = NULL;

	diff = FUNC1();
	FUNC0(diff);

	ctx = FUNC6(content, content_len, NULL);
	FUNC0(ctx);

	while (ctx->parse_ctx.remain_len) {
		if ((error = FUNC4(&patch, ctx)) < 0)
			break;

		FUNC7(&diff->patches, patch);
		FUNC7(&diff->base.deltas, patch->delta);
	}

	if (error == GIT_ENOTFOUND && FUNC8(&diff->patches) > 0) {
		FUNC3();
		error = 0;
	}

	FUNC5(ctx);

	if (error < 0)
		FUNC2(&diff->base);
	else
		*out = &diff->base;

	return error;
}