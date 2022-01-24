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
typedef  int /*<<< orphan*/  sm_lookup_data ;
typedef  int /*<<< orphan*/  git_submodule ;
typedef  int /*<<< orphan*/  data ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*) ; 
 int /*<<< orphan*/  g_repo ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  sm_lookup_cb ; 

void FUNC5(void)
{
	git_submodule *sm;
	sm_lookup_data data;
	FUNC4(&data, 0, sizeof(data));

	FUNC1("submod2/.gitmodules",
			   "[submodule \"Test_App\"\n"
			   "    path = Test_App\n"
			   "    url = ../Test_App\n");

	FUNC0(FUNC3(&sm, g_repo, "Test_App"));

	FUNC0(FUNC2(g_repo, sm_lookup_cb, &data));
}