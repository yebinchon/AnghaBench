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
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*) ; 
 int /*<<< orphan*/  g_repo ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

void FUNC6(void)
{
	git_submodule *sm;

	FUNC2("submod2/.gitmodules",
			   "[submodule \"Test_App\"]\n"
			   "    path = Test_App\n"
			   "    url = ../Test_App\n"
			   "[submodule \"Test_App2\"]\n"
			   "    path = Test_App2\n"
			   "    url = ../Test_App\n");

	FUNC1(FUNC4(&sm, g_repo, "Test_App"));
	FUNC0("Test_App", FUNC5(sm));

	FUNC3(sm);

	FUNC1(FUNC4(&sm, g_repo, "Test_App2"));
	FUNC0("Test_App2", FUNC5(sm));

	FUNC3(sm);
}