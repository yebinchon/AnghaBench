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

/* Variables and functions */
 int /*<<< orphan*/  FETCH_HEAD_EXPLICIT_DATA ; 
 int /*<<< orphan*/  GIT_BRANCH_ALL ; 
 int /*<<< orphan*/  FUNC0 (size_t,size_t) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 size_t FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  g_repo ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 

void FUNC6(void)
{
	git_reference *ref;
	size_t refs;

	FUNC3();
	refs = FUNC2();

	FUNC4("refs/heads/first-merge", FETCH_HEAD_EXPLICIT_DATA);
	FUNC1(FUNC5(&ref, g_repo, "first-merge", GIT_BRANCH_ALL));

	FUNC0(refs, FUNC2());
}