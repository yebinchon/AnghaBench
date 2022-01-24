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
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ **,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  other_commit_id ; 
 int /*<<< orphan*/ * other_refname ; 
 int /*<<< orphan*/ * refname ; 

void FUNC7(void)
{
	git_reference *ref, *ref2, *ref3;
	git_oid id, other_id;

	FUNC2(&id, commit_id);
	FUNC2(&other_id, other_commit_id);

	FUNC0(GIT_EMODIFIED, FUNC5(&ref, g_repo, "HEAD", other_refname, 1, other_refname, NULL));

	FUNC1(FUNC4(&ref, g_repo, "HEAD"));
	FUNC1(FUNC5(&ref2, g_repo, "HEAD", other_refname, 1, NULL, refname));
	FUNC0(GIT_EMODIFIED, FUNC6(&ref3, ref, other_refname, NULL));

	FUNC3(ref);
	FUNC3(ref2);
	FUNC3(ref3);
}