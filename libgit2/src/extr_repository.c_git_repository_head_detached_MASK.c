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
typedef  int /*<<< orphan*/  git_odb ;

/* Variables and functions */
 int /*<<< orphan*/  GIT_HEAD_FILE ; 
 scalar_t__ GIT_REFERENCE_SYMBOLIC ; 
 int FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ **,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ **,int /*<<< orphan*/ *) ; 

int FUNC6(git_repository *repo)
{
	git_reference *ref;
	git_odb *odb = NULL;
	int exists;

	if (FUNC5(&odb, repo) < 0)
		return -1;

	if (FUNC2(&ref, repo, GIT_HEAD_FILE) < 0)
		return -1;

	if (FUNC4(ref) == GIT_REFERENCE_SYMBOLIC) {
		FUNC1(ref);
		return 0;
	}

	exists = FUNC0(odb, FUNC3(ref));

	FUNC1(ref);
	return exists;
}