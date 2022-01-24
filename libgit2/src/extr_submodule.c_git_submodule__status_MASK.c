#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  git_submodule_ignore_t ;
struct TYPE_11__ {unsigned int flags; int /*<<< orphan*/  wd_oid; int /*<<< orphan*/  index_oid; int /*<<< orphan*/  head_oid; TYPE_1__* repo; int /*<<< orphan*/  ignore; } ;
typedef  TYPE_2__ git_submodule ;
typedef  int /*<<< orphan*/  git_repository ;
typedef  int /*<<< orphan*/  git_oid ;
struct TYPE_10__ {int /*<<< orphan*/ * submodule_cache; } ;

/* Variables and functions */
 int /*<<< orphan*/  GIT_SUBMODULE_IGNORE_ALL ; 
 int /*<<< orphan*/  GIT_SUBMODULE_IGNORE_DIRTY ; 
 int /*<<< orphan*/  GIT_SUBMODULE_IGNORE_UNSPECIFIED ; 
 unsigned int FUNC0 (unsigned int) ; 
 int GIT_SUBMODULE_STATUS__HEAD_OID_VALID ; 
 int GIT_SUBMODULE_STATUS__INDEX_OID_VALID ; 
 unsigned int GIT_SUBMODULE_STATUS__IN_FLAGS ; 
 int GIT_SUBMODULE_STATUS__WD_OID_VALID ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ **,TYPE_2__*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ **,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC6 (unsigned int*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC7 (unsigned int*,TYPE_2__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (TYPE_2__*) ; 
 scalar_t__ FUNC9 (TYPE_2__*) ; 

int FUNC10(
	unsigned int *out_status,
	git_oid *out_head_id,
	git_oid *out_index_id,
	git_oid *out_wd_id,
	git_submodule *sm,
	git_submodule_ignore_t ign)
{
	unsigned int status;
	git_repository *smrepo = NULL;

	if (ign == GIT_SUBMODULE_IGNORE_UNSPECIFIED)
		ign = sm->ignore;

	/* only return location info if ignore == all */
	if (ign == GIT_SUBMODULE_IGNORE_ALL) {
		*out_status = (sm->flags & GIT_SUBMODULE_STATUS__IN_FLAGS);
		return 0;
	}

	/* If the user has requested caching submodule state, performing these
	 * expensive operations (especially `submodule_update_head`, which is
	 * bottlenecked on `git_repository_head_tree`) eliminates much of the
	 * advantage.  We will, therefore, interpret the request for caching to
	 * apply here to and skip them.
	 */

	if (sm->repo->submodule_cache == NULL) {
		/* refresh the index OID */
		if (FUNC9(sm) < 0)
			return -1;

		/* refresh the HEAD OID */
		if (FUNC8(sm) < 0)
			return -1;
	}

	/* for ignore == dirty, don't scan the working directory */
	if (ign == GIT_SUBMODULE_IGNORE_DIRTY) {
		/* git_submodule_open_bare will load WD OID data */
		if (FUNC4(&smrepo, sm) < 0)
			FUNC1();
		else
			FUNC2(smrepo);
		smrepo = NULL;
	} else if (FUNC3(&smrepo, sm) < 0) {
		FUNC1();
		smrepo = NULL;
	}

	status = FUNC0(sm->flags);

	FUNC6(&status, sm);
	FUNC7(&status, sm, smrepo, ign);

	FUNC2(smrepo);

	*out_status = status;

	FUNC5(out_head_id, &sm->head_oid,
		(sm->flags & GIT_SUBMODULE_STATUS__HEAD_OID_VALID) != 0);
	FUNC5(out_index_id, &sm->index_oid,
		(sm->flags & GIT_SUBMODULE_STATUS__INDEX_OID_VALID) != 0);
	FUNC5(out_wd_id, &sm->wd_oid,
		(sm->flags & GIT_SUBMODULE_STATUS__WD_OID_VALID) != 0);

	return 0;
}