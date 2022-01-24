#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  git_tree ;
typedef  scalar_t__ git_submodule_ignore_t ;
struct TYPE_8__ {int flags; int /*<<< orphan*/  wd_oid; } ;
typedef  TYPE_1__ git_submodule ;
typedef  int /*<<< orphan*/  git_repository ;
typedef  int /*<<< orphan*/  git_oid ;
typedef  int /*<<< orphan*/  git_index ;
struct TYPE_9__ {int /*<<< orphan*/  flags; } ;
typedef  TYPE_2__ git_diff_options ;
typedef  int /*<<< orphan*/  git_diff ;

/* Variables and functions */
 int /*<<< orphan*/  GIT_DELTA_UNTRACKED ; 
 int /*<<< orphan*/  GIT_DIFF_INCLUDE_UNTRACKED ; 
 TYPE_2__ GIT_DIFF_OPTIONS_INIT ; 
 scalar_t__ GIT_SUBMODULE_IGNORE_NONE ; 
 int GIT_SUBMODULE_STATUS_IN_WD ; 
 unsigned int GIT_SUBMODULE_STATUS_WD_ADDED ; 
 unsigned int GIT_SUBMODULE_STATUS_WD_DELETED ; 
 unsigned int GIT_SUBMODULE_STATUS_WD_INDEX_MODIFIED ; 
 unsigned int GIT_SUBMODULE_STATUS_WD_MODIFIED ; 
 unsigned int GIT_SUBMODULE_STATUS_WD_UNINITIALIZED ; 
 unsigned int GIT_SUBMODULE_STATUS_WD_UNTRACKED ; 
 unsigned int GIT_SUBMODULE_STATUS_WD_WD_MODIFIED ; 
 unsigned int GIT_SUBMODULE_STATUS__WD_FLAGS ; 
 int GIT_SUBMODULE_STATUS__WD_OID_VALID ; 
 int GIT_SUBMODULE_STATUS__WD_SCANNED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ **,int /*<<< orphan*/ *,int /*<<< orphan*/ *,TYPE_2__*) ; 
 size_t FUNC2 (int /*<<< orphan*/ *) ; 
 size_t FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ **,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/  const*,int /*<<< orphan*/  const*) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ **,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ **,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC9 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC11(
	unsigned int *status,
	git_submodule *sm,
	git_repository *sm_repo,
	git_submodule_ignore_t ign)
{
	const git_oid *index_oid = FUNC9(sm);
	const git_oid *wd_oid =
		(sm->flags & GIT_SUBMODULE_STATUS__WD_OID_VALID) ? &sm->wd_oid : NULL;
	git_tree *sm_head = NULL;
	git_index *index = NULL;
	git_diff_options opt = GIT_DIFF_OPTIONS_INIT;
	git_diff *diff;

	*status = *status & ~GIT_SUBMODULE_STATUS__WD_FLAGS;

	if (!index_oid) {
		if (wd_oid)
			*status |= GIT_SUBMODULE_STATUS_WD_ADDED;
	}
	else if (!wd_oid) {
		if ((sm->flags & GIT_SUBMODULE_STATUS__WD_SCANNED) != 0 &&
			(sm->flags & GIT_SUBMODULE_STATUS_IN_WD) == 0)
			*status |= GIT_SUBMODULE_STATUS_WD_UNINITIALIZED;
		else
			*status |= GIT_SUBMODULE_STATUS_WD_DELETED;
	}
	else if (!FUNC6(index_oid, wd_oid))
		*status |= GIT_SUBMODULE_STATUS_WD_MODIFIED;

	/* if we have no repo, then we're done */
	if (!sm_repo)
		return;

	/* the diffs below could be optimized with an early termination
	 * option to the git_diff functions, but for now this is sufficient
	 * (and certainly no worse that what core git does).
	 */

	if (ign == GIT_SUBMODULE_IGNORE_NONE)
		opt.flags |= GIT_DIFF_INCLUDE_UNTRACKED;

	(void)FUNC8(&index, sm_repo);

	/* if we don't have an unborn head, check diff with index */
	if (FUNC7(&sm_head, sm_repo) < 0)
		FUNC5();
	else {
		/* perform head to index diff on submodule */
		if (FUNC4(&diff, sm_repo, sm_head, index, &opt) < 0)
			FUNC5();
		else {
			if (FUNC2(diff) > 0)
				*status |= GIT_SUBMODULE_STATUS_WD_INDEX_MODIFIED;
			FUNC0(diff);
			diff = NULL;
		}

		FUNC10(sm_head);
	}

	/* perform index-to-workdir diff on submodule */
	if (FUNC1(&diff, sm_repo, index, &opt) < 0)
		FUNC5();
	else {
		size_t untracked =
			FUNC3(diff, GIT_DELTA_UNTRACKED);

		if (untracked > 0)
			*status |= GIT_SUBMODULE_STATUS_WD_UNTRACKED;

		if (FUNC2(diff) != untracked)
			*status |= GIT_SUBMODULE_STATUS_WD_WD_MODIFIED;

		FUNC0(diff);
		diff = NULL;
	}
}