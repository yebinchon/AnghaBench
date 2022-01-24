#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_4__ ;
typedef  struct TYPE_14__   TYPE_3__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  git_diff_generated ;
struct TYPE_12__ {int /*<<< orphan*/  mode; } ;
struct TYPE_13__ {TYPE_1__ new_file; int /*<<< orphan*/  status; } ;
typedef  TYPE_2__ git_diff_delta ;
typedef  int /*<<< orphan*/  git_delta_t ;
struct TYPE_14__ {int /*<<< orphan*/  old_iter; TYPE_4__* oitem; int /*<<< orphan*/  new_iter; TYPE_4__* nitem; } ;
typedef  TYPE_3__ diff_in_progress ;
struct TYPE_15__ {int /*<<< orphan*/  mode; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  GIT_DELTA_CONFLICTED ; 
 int /*<<< orphan*/  GIT_DELTA_DELETED ; 
 int /*<<< orphan*/  GIT_DELTA_TYPECHANGE ; 
 int /*<<< orphan*/  GIT_DIFF_INCLUDE_TYPECHANGE_TREES ; 
 int /*<<< orphan*/  GIT_DIFF_RECURSE_UNTRACKED_DIRS ; 
 int /*<<< orphan*/  GIT_FILEMODE_TREE ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,TYPE_4__*,int /*<<< orphan*/ *) ; 
 TYPE_2__* FUNC4 (int /*<<< orphan*/ *,TYPE_4__*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,TYPE_4__*,TYPE_4__*) ; 
 scalar_t__ FUNC6 (TYPE_4__*) ; 
 int FUNC7 (TYPE_4__**,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC8(
	git_diff_generated *diff, diff_in_progress *info)
{
	git_delta_t delta_type = GIT_DELTA_DELETED;
	int error;

	/* update delta_type if this item is conflicted */
	if (FUNC6(info->oitem))
		delta_type = GIT_DELTA_CONFLICTED;

	if ((error = FUNC3(diff, delta_type, info->oitem, NULL)) < 0)
		return error;

	/* if we are generating TYPECHANGE records then check for that
	 * instead of just generating a DELETE record
	 */
	if (FUNC1(diff, GIT_DIFF_INCLUDE_TYPECHANGE_TREES) &&
		FUNC5(diff, info->nitem, info->oitem))
	{
		/* this entry has become a tree! convert to TYPECHANGE */
		git_diff_delta *last = FUNC4(diff, info->oitem);
		if (last) {
			last->status = GIT_DELTA_TYPECHANGE;
			last->new_file.mode = GIT_FILEMODE_TREE;
		}

		/* If new_iter is a workdir iterator, then this situation
		 * will certainly be followed by a series of untracked items.
		 * Unless RECURSE_UNTRACKED_DIRS is set, skip over them...
		 */
		if (FUNC2(info->nitem->mode) &&
			FUNC0(diff, GIT_DIFF_RECURSE_UNTRACKED_DIRS))
			return FUNC7(&info->nitem, info->new_iter);
	}

	return FUNC7(&info->oitem, info->old_iter);
}