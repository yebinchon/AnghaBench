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
 int /*<<< orphan*/  GIT_HEAD_FILE ; 
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,char*,int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  g_repo ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,char*,char*,int,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 

void FUNC7(void)
{
	git_reference *ref;

	FUNC0(false, FUNC6(g_repo));

	FUNC1(FUNC5(g_repo));
	FUNC2(g_repo, GIT_HEAD_FILE, 0,
		"a65fedf39aefe402d3bb6e24df4d4f5fe4547750",
		"a65fedf39aefe402d3bb6e24df4d4f5fe4547750",
		NULL, "checkout: moving from master to a65fedf39aefe402d3bb6e24df4d4f5fe4547750");
	FUNC0(true, FUNC6(g_repo));

	/* take the repo back to its original state */
	FUNC1(FUNC4(&ref, g_repo, "HEAD", "refs/heads/master",
											  true, "REATTACH"));

	FUNC2(g_repo, GIT_HEAD_FILE, 0,
		"a65fedf39aefe402d3bb6e24df4d4f5fe4547750",
		"a65fedf39aefe402d3bb6e24df4d4f5fe4547750",
		NULL, "REATTACH");

	FUNC0(false, FUNC6(g_repo));

	FUNC3(ref);
}