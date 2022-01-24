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
struct TYPE_4__ {int min_line; int max_line; } ;
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
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

void FUNC7(void)
{
	git_blame_options opts = GIT_BLAME_OPTIONS_INIT;

	FUNC3(FUNC6(&g_repo, FUNC2("blametest.git")));

	opts.min_line = 2;
	opts.max_line = 7;
	FUNC3(FUNC4(&g_blame, g_repo, "b.txt", &opts));
	FUNC1(3, FUNC5(g_blame));
	FUNC0(g_repo, g_blame, 0,  2, 3, 0, "da237394", "b.txt");
	FUNC0(g_repo, g_blame, 1,  5, 1, 1, "b99f7ac0", "b.txt");
	FUNC0(g_repo, g_blame, 2,  6, 2, 0, "63d671eb", "b.txt");
}