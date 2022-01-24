#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  git_submodule ;
struct TYPE_5__ {int /*<<< orphan*/  ptr; } ;
typedef  TYPE_1__ git_buf ;

/* Variables and functions */
 TYPE_1__ GIT_BUF_INIT ; 
 int /*<<< orphan*/  FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  find_naughty ; 
 int /*<<< orphan*/  g_repo ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 

void FUNC12(void)
{
	int foundit;
	git_submodule *sm;
	git_buf buf = GIT_BUF_INIT;

	FUNC2(FUNC5(&buf, FUNC6(g_repo), ".gitmodules"));
	FUNC3(buf.ptr,
			   "[submodule \"naughty\"]\n"
			   "    path = --something\n"
			   "    url = blah.git\n");
	FUNC4(&buf);

	/* We do want to find it, but with the appropriate field empty */
	foundit = 0;
	FUNC2(FUNC7(g_repo, find_naughty, &foundit));
	FUNC0(1, foundit);

	FUNC2(FUNC9(&sm, g_repo, "naughty"));
	FUNC1("naughty", FUNC10(sm));
	FUNC1("blah.git", FUNC11(sm));

	FUNC8(sm);
}