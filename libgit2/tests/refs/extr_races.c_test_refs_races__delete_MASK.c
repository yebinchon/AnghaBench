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
typedef  int /*<<< orphan*/  git_reference ;
typedef  int /*<<< orphan*/  git_oid ;

/* Variables and functions */
 int /*<<< orphan*/  GIT_EMODIFIED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  commit_id ; 
 int /*<<< orphan*/  g_repo ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  other_commit_id ; 
 int /*<<< orphan*/  other_refname ; 
 char* refname ; 

void FUNC9(void)
{
	git_reference *ref, *ref2;
	git_oid id, other_id;

	FUNC2(&id, commit_id);
	FUNC2(&other_id, other_commit_id);

	/* We can delete a value that matches */
	FUNC1(FUNC7(&ref, g_repo, refname));
	FUNC1(FUNC5(ref));
	FUNC6(ref);

	/* We cannot delete a symbolic value that doesn't match */
	FUNC1(FUNC7(&ref, g_repo, "HEAD"));
	FUNC1(FUNC8(&ref2, g_repo, "HEAD", other_refname, 1, NULL, refname));
	FUNC0(GIT_EMODIFIED, FUNC5(ref));

	FUNC6(ref);
	FUNC6(ref2);

	FUNC1(FUNC3(&ref, g_repo, refname, &id, 1, NULL));
	FUNC6(ref);

	/* We cannot delete an oid value that doesn't match */
	FUNC1(FUNC7(&ref, g_repo, refname));
	FUNC1(FUNC4(&ref2, g_repo, refname, &other_id, 1, &id, NULL));
	FUNC0(GIT_EMODIFIED, FUNC5(ref));

	FUNC6(ref);
	FUNC6(ref2);
}