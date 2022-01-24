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
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ **,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  other_commit_id ; 
 int /*<<< orphan*/  other_refname ; 
 int /*<<< orphan*/  refname ; 

void FUNC9(void)
{
	git_reference *ref, *ref2, *ref3;
	git_oid id, other_id;

	FUNC2(&id, commit_id);
	FUNC2(&other_id, other_commit_id);

	/* Removing a direct ref when it's currently symbolic should fail */
	FUNC1(FUNC6(&ref, g_repo, refname));
	FUNC1(FUNC8(&ref2, g_repo, refname, other_refname, 1, NULL));
	FUNC0(GIT_EMODIFIED, FUNC4(ref));

	FUNC5(ref);
	FUNC5(ref2);

	FUNC1(FUNC3(&ref, g_repo, refname, &id, 1, NULL));
	FUNC5(ref);

	/* Updating a direct ref when it's currently symbolic should fail */
	FUNC1(FUNC6(&ref, g_repo, refname));
	FUNC1(FUNC8(&ref2, g_repo, refname, other_refname, 1, NULL));
	FUNC0(GIT_EMODIFIED, FUNC7(&ref3, ref, &other_id, NULL));

	FUNC5(ref);
	FUNC5(ref2);
	FUNC5(ref3);
}