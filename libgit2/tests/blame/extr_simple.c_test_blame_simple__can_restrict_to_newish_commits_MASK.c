#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  git_object ;
struct TYPE_4__ {int /*<<< orphan*/  oldest_commit; } ;
typedef  TYPE_1__ git_blame_options ;

/* Variables and functions */
 TYPE_1__ GIT_BLAME_OPTIONS_INIT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,int,int,char*,char*) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  g_blame ; 
 int /*<<< orphan*/  g_repo ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,char*) ; 

void FUNC11(void)
{
	git_blame_options opts = GIT_BLAME_OPTIONS_INIT;

	FUNC3(FUNC9(&g_repo, FUNC2("testrepo.git")));

	{
		git_object *obj;
		FUNC3(FUNC10(&obj, g_repo, "be3563a"));
		FUNC8(&opts.oldest_commit, FUNC7(obj));
		FUNC6(obj);
	}

	FUNC3(FUNC4(&g_blame, g_repo, "branch_file.txt", &opts));

	FUNC1(2, FUNC5(g_blame));
	FUNC0(g_repo, g_blame, 0,  1, 1, 1, "be3563a", "branch_file.txt");
	FUNC0(g_repo, g_blame, 1,  2, 1, 0, "a65fedf", "branch_file.txt");
}