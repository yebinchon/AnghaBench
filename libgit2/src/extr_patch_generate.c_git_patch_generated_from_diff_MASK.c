#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_22__   TYPE_4__ ;
typedef  struct TYPE_21__   TYPE_3__ ;
typedef  struct TYPE_20__   TYPE_2__ ;
typedef  struct TYPE_19__   TYPE_1__ ;
typedef  struct TYPE_18__   TYPE_11__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  xo ;
struct TYPE_19__ {int /*<<< orphan*/  output; } ;
typedef  TYPE_1__ git_xdiff_output ;
struct TYPE_20__ {int /*<<< orphan*/  base; } ;
typedef  TYPE_2__ git_patch_generated ;
typedef  int /*<<< orphan*/  git_patch ;
struct TYPE_21__ {int flags; } ;
typedef  TYPE_3__ git_diff_delta ;
struct TYPE_18__ {int flags; } ;
struct TYPE_22__ {TYPE_11__ opts; int /*<<< orphan*/  deltas; } ;
typedef  TYPE_4__ git_diff ;

/* Variables and functions */
 int DIFF_FLAGS_KNOWN_BINARY ; 
 int GIT_DIFF_SKIP_BINARY_CHECK ; 
 int GIT_ENOTFOUND ; 
 int /*<<< orphan*/  GIT_ERROR_INVALID ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,TYPE_2__*) ; 
 scalar_t__ FUNC1 (TYPE_4__*,char*) ; 
 scalar_t__ FUNC2 (TYPE_11__*,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 TYPE_3__* FUNC5 (int /*<<< orphan*/ *,size_t) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,TYPE_11__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 int FUNC8 (TYPE_2__**,TYPE_4__*,size_t) ; 
 int FUNC9 (TYPE_2__*,int /*<<< orphan*/ *) ; 
 int FUNC10 (TYPE_2__*,int /*<<< orphan*/ *) ; 

int FUNC11(
	git_patch **patch_ptr, git_diff *diff, size_t idx)
{
	int error = 0;
	git_xdiff_output xo;
	git_diff_delta *delta = NULL;
	git_patch_generated *patch = NULL;

	if (patch_ptr) *patch_ptr = NULL;

	if (FUNC1(diff, "git_patch_from_diff") < 0)
		return -1;

	delta = FUNC5(&diff->deltas, idx);
	if (!delta) {
		FUNC3(GIT_ERROR_INVALID, "index out of range for delta in diff");
		return GIT_ENOTFOUND;
	}

	if (FUNC2(&diff->opts, delta))
		return 0;

	/* don't load the patch data unless we need it for binary check */
	if (!patch_ptr &&
		((delta->flags & DIFF_FLAGS_KNOWN_BINARY) != 0 ||
		 (diff->opts.flags & GIT_DIFF_SKIP_BINARY_CHECK) != 0))
		return 0;

	if ((error = FUNC8(&patch, diff, idx)) < 0)
		return error;

	FUNC7(&xo, 0, sizeof(xo));
	FUNC0(&xo.output, patch);
	FUNC6(&xo, &diff->opts);

	error = FUNC10(patch, &xo.output);

	if (!error)
		error = FUNC9(patch, &xo.output);

	if (!error) {
		/* TODO: if cumulative diff size is < 0.5 total size, flatten patch */
		/* TODO: and unload the file content */
	}

	if (error || !patch_ptr)
		FUNC4(&patch->base);
	else
		*patch_ptr = &patch->base;

	return error;
}