#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  git_submodule ;
struct TYPE_12__ {int /*<<< orphan*/  path; } ;
typedef  TYPE_1__ git_index_entry ;
struct TYPE_13__ {int /*<<< orphan*/  tree; } ;
typedef  TYPE_2__ git_index ;
typedef  int /*<<< orphan*/  git_error_state ;

/* Variables and functions */
 int GIT_EDIRECTORY ; 
 int GIT_EEXISTS ; 
 int GIT_ENOTFOUND ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 int FUNC1 (TYPE_1__**,TYPE_2__*,char const*) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int FUNC5 (int /*<<< orphan*/ *) ; 
 int FUNC6 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int FUNC8 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC10 (TYPE_2__*,char const*) ; 
 int FUNC11 (TYPE_1__**,TYPE_2__*,char const*) ; 
 int FUNC12 (TYPE_2__*,TYPE_1__**,int,int,int,int) ; 

int FUNC13(git_index *index, const char *path)
{
	git_index_entry *entry = NULL;
	int ret;

	FUNC2(index && path);

	if ((ret = FUNC11(&entry, index, path)) == 0)
		ret = FUNC12(index, &entry, 1, false, false, true);

	/* If we were given a directory, let's see if it's a submodule */
	if (ret < 0 && ret != GIT_EDIRECTORY)
		return ret;

	if (ret == GIT_EDIRECTORY) {
		git_submodule *sm;
		git_error_state err;

		FUNC3(&err, ret);

		ret = FUNC8(&sm, FUNC0(index), path);
		if (ret == GIT_ENOTFOUND)
			return FUNC5(&err);

		FUNC4(&err);

		/*
		 * EEXISTS means that there is a repository at that path, but it's not known
		 * as a submodule. We add its HEAD as an entry and don't register it.
		 */
		if (ret == GIT_EEXISTS) {
			if ((ret = FUNC1(&entry, index, path)) < 0)
				return ret;

			if ((ret = FUNC12(index, &entry, 1, false, false, true)) < 0)
				return ret;
		} else if (ret < 0) {
			return ret;
		} else {
			ret = FUNC6(sm, false);
			FUNC7(sm);
			return ret;
		}
	}

	/* Adding implies conflict was resolved, move conflict entries to REUC */
	if ((ret = FUNC10(index, path)) < 0 && ret != GIT_ENOTFOUND)
		return ret;

	FUNC9(index->tree, entry->path);
	return 0;
}