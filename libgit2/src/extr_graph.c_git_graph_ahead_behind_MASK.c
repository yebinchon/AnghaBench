#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  git_revwalk ;
typedef  int /*<<< orphan*/  git_repository ;
typedef  int /*<<< orphan*/  git_oid ;
typedef  int /*<<< orphan*/  git_commit_list_node ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,size_t*,size_t*) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ **,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

int FUNC5(size_t *ahead, size_t *behind, git_repository *repo,
	const git_oid *local, const git_oid *upstream)
{
	git_revwalk *walk;
	git_commit_list_node *commit_u, *commit_l;

	if (FUNC3(&walk, repo) < 0)
		return -1;

	commit_u = FUNC1(walk, upstream);
	if (commit_u == NULL)
		goto on_error;

	commit_l = FUNC1(walk, local);
	if (commit_l == NULL)
		goto on_error;

	if (FUNC4(walk, commit_l, commit_u) < 0)
		goto on_error;
	if (FUNC0(commit_l, commit_u, ahead, behind) < 0)
		goto on_error;

	FUNC2(walk);

	return 0;

on_error:
	FUNC2(walk);
	return -1;
}