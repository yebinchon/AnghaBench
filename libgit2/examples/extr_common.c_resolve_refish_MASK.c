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
typedef  int /*<<< orphan*/  git_reference ;
typedef  int /*<<< orphan*/  git_object ;
typedef  int /*<<< orphan*/  git_annotated_commit ;

/* Variables and functions */
 int GIT_OK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ **,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ **,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int FUNC5 (int /*<<< orphan*/ **,int /*<<< orphan*/ *,char const*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int FUNC7 (int /*<<< orphan*/ **,int /*<<< orphan*/ *,char const*) ; 

int FUNC8(git_annotated_commit **commit, git_repository *repo, const char *refish)
{
	git_reference *ref;
	git_object *obj;
	int err = 0;

	FUNC0(commit != NULL);

	err = FUNC5(&ref, repo, refish);
	if (err == GIT_OK) {
		FUNC1(commit, repo, ref);
		FUNC6(ref);
		return 0;
	}

	err = FUNC7(&obj, repo, refish);
	if (err == GIT_OK) {
		err = FUNC2(commit, repo, FUNC4(obj));
		FUNC3(obj);
	}

	return err;
}