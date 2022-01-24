#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  git_strarray ;
typedef  int /*<<< orphan*/  git_repository ;
struct TYPE_4__ {int /*<<< orphan*/  pathspec; } ;
typedef  TYPE_1__ git_pathspec ;
typedef  int /*<<< orphan*/  git_iterator ;
typedef  int /*<<< orphan*/  git_index_matched_path_cb ;
typedef  int /*<<< orphan*/  git_index ;

/* Variables and functions */
 unsigned int GIT_INDEX_ADD_CHECK_PATHSPEC ; 
 unsigned int GIT_INDEX_ADD_DISABLE_PATHSPEC_MATCH ; 
 unsigned int GIT_INDEX_ADD_FORCE ; 
 int /*<<< orphan*/  INDEX_ACTION_ADDALL ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 
 int FUNC6 (TYPE_1__*,int /*<<< orphan*/  const*) ; 
 int FUNC7 (int /*<<< orphan*/ *,char*) ; 
 int FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/  const*,unsigned int,int /*<<< orphan*/ ,void*) ; 

int FUNC9(
	git_index *index,
	const git_strarray *paths,
	unsigned int flags,
	git_index_matched_path_cb cb,
	void *payload)
{
	int error;
	git_repository *repo;
	git_iterator *wditer = NULL;
	git_pathspec ps;
	bool no_fnmatch = (flags & GIT_INDEX_ADD_DISABLE_PATHSPEC_MATCH) != 0;

	FUNC1(index);

	repo = FUNC0(index);
	if ((error = FUNC7(repo, "index add all")) < 0)
		return error;

	if ((error = FUNC6(&ps, paths)) < 0)
		return error;

	/* optionally check that pathspec doesn't mention any ignored files */
	if ((flags & GIT_INDEX_ADD_CHECK_PATHSPEC) != 0 &&
		(flags & GIT_INDEX_ADD_FORCE) == 0 &&
		(error = FUNC3(
			repo, &ps.pathspec, no_fnmatch)) < 0)
		goto cleanup;

	error = FUNC8(index, INDEX_ACTION_ADDALL, paths, flags, cb, payload);

	if (error)
		FUNC2(error);

cleanup:
	FUNC4(wditer);
	FUNC5(&ps);

	return error;
}