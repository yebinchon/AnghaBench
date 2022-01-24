#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_20__   TYPE_5__ ;
typedef  struct TYPE_19__   TYPE_4__ ;
typedef  struct TYPE_18__   TYPE_3__ ;
typedef  struct TYPE_17__   TYPE_2__ ;
typedef  struct TYPE_16__   TYPE_1__ ;

/* Type definitions */
struct TYPE_17__ {TYPE_1__* delta; int /*<<< orphan*/  lines; int /*<<< orphan*/  hunks; } ;
struct TYPE_18__ {TYPE_2__ base; } ;
typedef  TYPE_3__ git_patch_parsed ;
struct TYPE_19__ {int /*<<< orphan*/  parse_ctx; } ;
typedef  TYPE_4__ git_patch_parse_ctx ;
struct TYPE_20__ {scalar_t__ line_count; int /*<<< orphan*/  line_start; } ;
typedef  TYPE_5__ git_patch_hunk ;
struct TYPE_16__ {int /*<<< orphan*/  flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  GIT_DIFF_FLAG_NOT_BINARY ; 
 int /*<<< orphan*/  FUNC0 (TYPE_5__*) ; 
 TYPE_5__* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_5__*,int /*<<< orphan*/ ,int) ; 
 int FUNC5 (TYPE_3__*,TYPE_5__*,TYPE_4__*) ; 
 int FUNC6 (TYPE_5__*,TYPE_4__*) ; 

__attribute__((used)) static int FUNC7(
	git_patch_parsed *patch,
	git_patch_parse_ctx *ctx)
{
	git_patch_hunk *hunk;
	int error = 0;

	while (FUNC3(&ctx->parse_ctx, "@@ -")) {
		hunk = FUNC1(patch->base.hunks);
		FUNC0(hunk);

		FUNC4(hunk, 0, sizeof(git_patch_hunk));

		hunk->line_start = FUNC2(patch->base.lines);
		hunk->line_count = 0;

		if ((error = FUNC6(hunk, ctx)) < 0 ||
			(error = FUNC5(patch, hunk, ctx)) < 0)
			goto done;
	}

	patch->base.delta->flags |= GIT_DIFF_FLAG_NOT_BINARY;

done:
	return error;
}