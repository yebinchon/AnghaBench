#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_35__   TYPE_8__ ;
typedef  struct TYPE_34__   TYPE_6__ ;
typedef  struct TYPE_33__   TYPE_5__ ;
typedef  struct TYPE_32__   TYPE_4__ ;
typedef  struct TYPE_31__   TYPE_3__ ;
typedef  struct TYPE_30__   TYPE_2__ ;
typedef  struct TYPE_29__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ git_iterator_status_t ;
struct TYPE_31__ {scalar_t__ mode; int /*<<< orphan*/  path; } ;
typedef  TYPE_3__ git_index_entry ;
struct TYPE_29__ {int /*<<< orphan*/  deltas; } ;
struct TYPE_32__ {TYPE_1__ base; } ;
typedef  TYPE_4__ git_diff_generated ;
struct TYPE_30__ {scalar_t__ mode; } ;
struct TYPE_33__ {TYPE_2__ old_file; scalar_t__ status; } ;
typedef  TYPE_5__ git_diff_delta ;
typedef  scalar_t__ git_delta_t ;
typedef  int /*<<< orphan*/  git_buf ;
struct TYPE_34__ {TYPE_8__* new_iter; TYPE_3__* nitem; int /*<<< orphan*/  repo; int /*<<< orphan*/  oitem; } ;
typedef  TYPE_6__ diff_in_progress ;
struct TYPE_35__ {scalar_t__ type; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (TYPE_4__*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (TYPE_4__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  DOT_GIT ; 
 scalar_t__ GIT_DELTA_ADDED ; 
 scalar_t__ GIT_DELTA_CONFLICTED ; 
 scalar_t__ GIT_DELTA_IGNORED ; 
 scalar_t__ GIT_DELTA_TYPECHANGE ; 
 scalar_t__ GIT_DELTA_UNREADABLE ; 
 scalar_t__ GIT_DELTA_UNTRACKED ; 
 int /*<<< orphan*/  GIT_DIFF_ENABLE_FAST_UNTRACKED_DIRS ; 
 int /*<<< orphan*/  GIT_DIFF_INCLUDE_IGNORED ; 
 int /*<<< orphan*/  GIT_DIFF_INCLUDE_TYPECHANGE_TREES ; 
 int /*<<< orphan*/  GIT_DIFF_INCLUDE_UNREADABLE_AS_UNTRACKED ; 
 int /*<<< orphan*/  GIT_DIFF_RECURSE_IGNORED_DIRS ; 
 int /*<<< orphan*/  GIT_DIFF_RECURSE_UNTRACKED_DIRS ; 
 int GIT_ENOTFOUND ; 
 scalar_t__ GIT_FILEMODE_COMMIT ; 
 scalar_t__ GIT_FILEMODE_TREE ; 
 scalar_t__ GIT_FILEMODE_UNREADABLE ; 
 scalar_t__ GIT_ITERATOR_STATUS_EMPTY ; 
 scalar_t__ GIT_ITERATOR_STATUS_FILTERED ; 
 scalar_t__ GIT_ITERATOR_STATUS_IGNORED ; 
 scalar_t__ GIT_ITERATOR_TYPE_WORKDIR ; 
 int FUNC2 (TYPE_4__*,scalar_t__,int /*<<< orphan*/ *,TYPE_3__ const*) ; 
 TYPE_5__* FUNC3 (TYPE_4__*,TYPE_3__ const*) ; 
 int FUNC4 (TYPE_4__*,int /*<<< orphan*/ ,TYPE_3__ const*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 scalar_t__ FUNC7 (TYPE_3__ const*) ; 
 scalar_t__ FUNC8 (TYPE_8__*) ; 
 scalar_t__ FUNC9 (TYPE_8__*) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ **,TYPE_8__*) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int FUNC14 (TYPE_3__**,TYPE_8__*) ; 
 int FUNC15 (TYPE_3__**,TYPE_8__*) ; 
 int FUNC16 (TYPE_3__**,scalar_t__*,TYPE_8__*) ; 

__attribute__((used)) static int FUNC17(
	git_diff_generated *diff, diff_in_progress *info)
{
	int error = 0;
	const git_index_entry *nitem = info->nitem;
	git_delta_t delta_type = GIT_DELTA_UNTRACKED;
	bool contains_oitem;

	/* check if this is a prefix of the other side */
	contains_oitem = FUNC4(diff, info->oitem, nitem);

	/* update delta_type if this item is conflicted */
	if (FUNC7(nitem))
		delta_type = GIT_DELTA_CONFLICTED;

	/* update delta_type if this item is ignored */
	else if (FUNC8(info->new_iter))
		delta_type = GIT_DELTA_IGNORED;

	if (nitem->mode == GIT_FILEMODE_TREE) {
		bool recurse_into_dir = contains_oitem;

		/* check if user requests recursion into this type of dir */
		recurse_into_dir = contains_oitem ||
			(delta_type == GIT_DELTA_UNTRACKED &&
			 FUNC1(diff, GIT_DIFF_RECURSE_UNTRACKED_DIRS)) ||
			(delta_type == GIT_DELTA_IGNORED &&
			 FUNC1(diff, GIT_DIFF_RECURSE_IGNORED_DIRS));

		/* do not advance into directories that contain a .git file */
		if (recurse_into_dir && !contains_oitem) {
			git_buf *full = NULL;
			if (FUNC10(&full, info->new_iter) < 0)
				return -1;
			if (full && FUNC11(full, DOT_GIT)) {
				/* TODO: warning if not a valid git repository */
				recurse_into_dir = false;
			}
		}

		/* still have to look into untracked directories to match core git -
		 * with no untracked files, directory is treated as ignored
		 */
		if (!recurse_into_dir &&
			delta_type == GIT_DELTA_UNTRACKED &&
			FUNC0(diff, GIT_DIFF_ENABLE_FAST_UNTRACKED_DIRS))
		{
			git_diff_delta *last;
			git_iterator_status_t untracked_state;

			/* attempt to insert record for this directory */
			if ((error = FUNC2(diff, delta_type, NULL, nitem)) != 0)
				return error;

			/* if delta wasn't created (because of rules), just skip ahead */
			last = FUNC3(diff, nitem);
			if (!last)
				return FUNC14(&info->nitem, info->new_iter);

			/* iterate into dir looking for an actual untracked file */
			if ((error = FUNC16(
					&info->nitem, &untracked_state, info->new_iter)) < 0)
				return error;

			/* if we found nothing that matched our pathlist filter, exclude */
			if (untracked_state == GIT_ITERATOR_STATUS_FILTERED) {
				FUNC13(&diff->base.deltas);
				FUNC5(last);
			}

			/* if we found nothing or just ignored items, update the record */
			if (untracked_state == GIT_ITERATOR_STATUS_IGNORED ||
				untracked_state == GIT_ITERATOR_STATUS_EMPTY) {
				last->status = GIT_DELTA_IGNORED;

				/* remove the record if we don't want ignored records */
				if (FUNC0(diff, GIT_DIFF_INCLUDE_IGNORED)) {
					FUNC13(&diff->base.deltas);
					FUNC5(last);
				}
			}

			return 0;
		}

		/* try to advance into directory if necessary */
		if (recurse_into_dir) {
			error = FUNC15(&info->nitem, info->new_iter);

			/* if directory is empty, can't advance into it, so skip it */
			if (error == GIT_ENOTFOUND) {
				FUNC6();
				error = FUNC14(&info->nitem, info->new_iter);
			}

			return error;
		}
	}

	else if (delta_type == GIT_DELTA_IGNORED &&
		FUNC0(diff, GIT_DIFF_RECURSE_IGNORED_DIRS) &&
		FUNC9(info->new_iter))
		/* item contained in ignored directory, so skip over it */
		return FUNC14(&info->nitem, info->new_iter);

	else if (info->new_iter->type != GIT_ITERATOR_TYPE_WORKDIR) {
		if (delta_type != GIT_DELTA_CONFLICTED)
			delta_type = GIT_DELTA_ADDED;
	}

	else if (nitem->mode == GIT_FILEMODE_COMMIT) {
		/* ignore things that are not actual submodules */
		if (FUNC12(NULL, info->repo, nitem->path) != 0) {
			FUNC6();
			delta_type = GIT_DELTA_IGNORED;

			/* if this contains a tracked item, treat as normal TREE */
			if (contains_oitem) {
				error = FUNC15(&info->nitem, info->new_iter);
				if (error != GIT_ENOTFOUND)
					return error;

				FUNC6();
				return FUNC14(&info->nitem, info->new_iter);
			}
		}
	}

	else if (nitem->mode == GIT_FILEMODE_UNREADABLE) {
		if (FUNC1(diff, GIT_DIFF_INCLUDE_UNREADABLE_AS_UNTRACKED))
			delta_type = GIT_DELTA_UNTRACKED;
		else
			delta_type = GIT_DELTA_UNREADABLE;
	}

	/* Actually create the record for this item if necessary */
	if ((error = FUNC2(diff, delta_type, NULL, nitem)) != 0)
		return error;

	/* If user requested TYPECHANGE records, then check for that instead of
	 * just generating an ADDED/UNTRACKED record
	 */
	if (delta_type != GIT_DELTA_IGNORED &&
		FUNC1(diff, GIT_DIFF_INCLUDE_TYPECHANGE_TREES) &&
		contains_oitem)
	{
		/* this entry was prefixed with a tree - make TYPECHANGE */
		git_diff_delta *last = FUNC3(diff, nitem);
		if (last) {
			last->status = GIT_DELTA_TYPECHANGE;
			last->old_file.mode = GIT_FILEMODE_TREE;
		}
	}

	return FUNC14(&info->nitem, info->new_iter);
}