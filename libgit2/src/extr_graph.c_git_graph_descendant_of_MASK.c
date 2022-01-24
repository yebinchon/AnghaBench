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
typedef  int /*<<< orphan*/  git_repository ;
typedef  int /*<<< orphan*/  const git_oid ;

/* Variables and functions */
 int GIT_ENOTFOUND ; 
 int FUNC0 (int /*<<< orphan*/  const*,int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int /*<<< orphan*/  const*) ; 
 int FUNC1 (int /*<<< orphan*/  const*,int /*<<< orphan*/  const*) ; 

int FUNC2(git_repository *repo, const git_oid *commit, const git_oid *ancestor)
{
	git_oid merge_base;
	int error;

	if (FUNC1(commit, ancestor))
		return 0;

	error = FUNC0(&merge_base, repo, commit, ancestor);
	/* No merge-base found, it's not a descendant */
	if (error == GIT_ENOTFOUND)
		return 0;

	if (error < 0)
		return error;

	return FUNC1(&merge_base, ancestor);
}