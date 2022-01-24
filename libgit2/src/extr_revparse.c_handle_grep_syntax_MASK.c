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
typedef  int /*<<< orphan*/  git_regexp ;
typedef  int /*<<< orphan*/  git_oid ;
typedef  int /*<<< orphan*/  git_object ;

/* Variables and functions */
 int /*<<< orphan*/  GIT_SORT_TIME ; 
 int FUNC0 (int /*<<< orphan*/ *,char const*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ **,int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*) ; 
 int FUNC5 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC7 (int /*<<< orphan*/ **,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC8(git_object **out, git_repository *repo, const git_oid *spec_oid, const char *pattern)
{
	git_regexp preg;
	git_revwalk *walk = NULL;
	int error;

	if ((error = FUNC0(&preg, pattern)) < 0)
		return error;

	if ((error = FUNC3(&walk, repo)) < 0)
		goto cleanup;

	FUNC6(walk, GIT_SORT_TIME);

	if (spec_oid == NULL) {
		if ((error = FUNC5(walk, "refs/*")) < 0)
			goto cleanup;
	} else if ((error = FUNC4(walk, spec_oid)) < 0)
			goto cleanup;

	error = FUNC7(out, walk, &preg);

cleanup:
	FUNC1(&preg);
	FUNC2(walk);

	return error;
}