#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_4__ ;
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
struct TYPE_12__ {int /*<<< orphan*/  rename_from_rewrite_threshold; int /*<<< orphan*/  break_rewrite_threshold; } ;
typedef  TYPE_2__ git_diff_find_options ;
struct TYPE_11__ {int /*<<< orphan*/  mode; } ;
struct TYPE_13__ {int status; int /*<<< orphan*/  flags; int /*<<< orphan*/  similarity; TYPE_1__ new_file; } ;
typedef  TYPE_3__ git_diff_delta ;
struct TYPE_14__ {int /*<<< orphan*/  deltas; } ;
typedef  TYPE_4__ git_diff ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_2__ const*,int /*<<< orphan*/ ) ; 
#define  GIT_DELTA_CONFLICTED 133 
#define  GIT_DELTA_DELETED 132 
#define  GIT_DELTA_IGNORED 131 
#define  GIT_DELTA_MODIFIED 130 
#define  GIT_DELTA_UNMODIFIED 129 
#define  GIT_DELTA_UNTRACKED 128 
 int /*<<< orphan*/  GIT_DIFF_BREAK_REWRITES ; 
 int /*<<< orphan*/  GIT_DIFF_FIND_FOR_UNTRACKED ; 
 int /*<<< orphan*/  GIT_DIFF_FIND_RENAMES_FROM_REWRITES ; 
 int /*<<< orphan*/  GIT_DIFF_FIND_REWRITES ; 
 int /*<<< orphan*/  GIT_DIFF_FLAG__IS_RENAME_TARGET ; 
 int /*<<< orphan*/  GIT_DIFF_FLAG__TO_SPLIT ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 TYPE_3__* FUNC2 (int /*<<< orphan*/ *,size_t) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_4__*,TYPE_2__ const*,size_t,void**) ; 

__attribute__((used)) static bool FUNC4(
	git_diff *diff,
	const git_diff_find_options *opts,
	size_t delta_idx,
	void **cache)
{
	git_diff_delta *delta = FUNC2(&diff->deltas, delta_idx);

	/* skip things that aren't plain blobs */
	if (!FUNC1(delta->new_file.mode))
		return false;

	/* only consider ADDED, RENAMED, COPIED, and split MODIFIED as
	 * targets; maybe include UNTRACKED if requested.
	 */
	switch (delta->status) {
	case GIT_DELTA_UNMODIFIED:
	case GIT_DELTA_DELETED:
	case GIT_DELTA_IGNORED:
	case GIT_DELTA_CONFLICTED:
		return false;

	case GIT_DELTA_MODIFIED:
		if (!FUNC0(opts, GIT_DIFF_FIND_REWRITES) &&
			!FUNC0(opts, GIT_DIFF_FIND_RENAMES_FROM_REWRITES))
			return false;

		if (FUNC3(diff, opts, delta_idx, cache) < 0)
			return false;

		if (FUNC0(opts, GIT_DIFF_BREAK_REWRITES) &&
			delta->similarity < opts->break_rewrite_threshold) {
			delta->flags |= GIT_DIFF_FLAG__TO_SPLIT;
			break;
		}
		if (FUNC0(opts, GIT_DIFF_FIND_RENAMES_FROM_REWRITES) &&
			delta->similarity < opts->rename_from_rewrite_threshold) {
			delta->flags |= GIT_DIFF_FLAG__TO_SPLIT;
			break;
		}

		return false;

	case GIT_DELTA_UNTRACKED:
		if (!FUNC0(opts, GIT_DIFF_FIND_FOR_UNTRACKED))
			return false;
		break;

	default: /* all other status values should be checked */
		break;
	}

	delta->flags |= GIT_DIFF_FLAG__IS_RENAME_TARGET;
	return true;
}