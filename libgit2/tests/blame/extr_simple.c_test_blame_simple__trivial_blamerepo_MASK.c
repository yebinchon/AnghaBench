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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,int,int,char*,char*) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  g_blame ; 
 int /*<<< orphan*/  g_repo ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

void FUNC7(void)
{
	FUNC3(FUNC6(&g_repo, FUNC2("blametest.git")));
	FUNC3(FUNC4(&g_blame, g_repo, "b.txt", NULL));

	FUNC1(4, FUNC5(g_blame));
	FUNC0(g_repo, g_blame, 0,  1, 4, 0, "da237394", "b.txt");
	FUNC0(g_repo, g_blame, 1,  5, 1, 1, "b99f7ac0", "b.txt");
	FUNC0(g_repo, g_blame, 2,  6, 5, 0, "63d671eb", "b.txt");
	FUNC0(g_repo, g_blame, 3, 11, 5, 0, "aa06ecca", "b.txt");
}