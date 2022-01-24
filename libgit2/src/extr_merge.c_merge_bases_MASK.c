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
struct TYPE_4__ {int length; void** contents; } ;
typedef  TYPE_1__ git_vector ;
typedef  int /*<<< orphan*/  git_revwalk ;
typedef  int /*<<< orphan*/  git_repository ;
typedef  int /*<<< orphan*/  git_oid ;
typedef  int /*<<< orphan*/  git_commit_list_node ;
typedef  int /*<<< orphan*/  git_commit_list ;

/* Variables and functions */
 int GIT_ENOTFOUND ; 
 int /*<<< orphan*/  GIT_ERROR_MERGE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ **,int /*<<< orphan*/ *,int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ **,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,int,int) ; 

__attribute__((used)) static int FUNC6(git_commit_list **out, git_revwalk **walk_out, git_repository *repo, const git_oid *one, const git_oid *two)
{
	git_revwalk *walk;
	git_vector list;
	git_commit_list *result = NULL;
	git_commit_list_node *commit;
	void *contents[1];

	if (FUNC4(&walk, repo) < 0)
		return -1;

	commit = FUNC2(walk, two);
	if (commit == NULL)
		goto on_error;

	/* This is just one value, so we can do it on the stack */
	FUNC5(&list, 0x0, sizeof(git_vector));
	contents[0] = commit;
	list.length = 1;
	list.contents = contents;

	commit = FUNC2(walk, one);
	if (commit == NULL)
		goto on_error;

	if (FUNC1(&result, walk, commit, &list) < 0)
		goto on_error;

	if (!result) {
		FUNC3(walk);
		FUNC0(GIT_ERROR_MERGE, "no merge base found");
		return GIT_ENOTFOUND;
	}

	*out = result;
	*walk_out = walk;

	return 0;

on_error:
	FUNC3(walk);
	return -1;

}