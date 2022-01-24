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
typedef  int /*<<< orphan*/  git_tree ;
typedef  int /*<<< orphan*/  git_repository ;

/* Variables and functions */
 int GIT_EEXISTS ; 
 int FUNC0 (int /*<<< orphan*/ **,int /*<<< orphan*/ *,int /*<<< orphan*/ *,char const*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ **,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(git_tree **out, git_tree *root,
			git_repository *repo, const char *target, int *fanout)
{
	int error;
	git_tree *subtree = NULL;

	*out = NULL;

	error = FUNC0(&subtree, repo, root, target, *fanout);
	if (error == GIT_EEXISTS)
		return FUNC3(out, repo, FUNC2(root));

	if (error < 0)
		return error;

	*fanout += 2;
	error = FUNC4(out, subtree, repo, target, fanout);
	FUNC1(subtree);

	return error;
}