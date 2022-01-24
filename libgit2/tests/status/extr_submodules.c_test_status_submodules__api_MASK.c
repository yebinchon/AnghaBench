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
typedef  int /*<<< orphan*/  git_submodule ;

/* Variables and functions */
 scalar_t__ GIT_ENOTFOUND ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  g_repo ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 () ; 

void FUNC8(void)
{
	git_submodule *sm;

	g_repo = FUNC7();

	FUNC0(FUNC4(NULL, g_repo, "nonexistent") == GIT_ENOTFOUND);

	FUNC0(FUNC4(NULL, g_repo, "modified") == GIT_ENOTFOUND);

	FUNC2(FUNC4(&sm, g_repo, "testrepo"));
	FUNC0(sm != NULL);
	FUNC1("testrepo", FUNC5(sm));
	FUNC1("testrepo", FUNC6(sm));
	FUNC3(sm);
}