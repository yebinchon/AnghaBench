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
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * g_object ; 
 int /*<<< orphan*/  g_opts ; 
 int /*<<< orphan*/  g_repo ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,char*) ; 

void FUNC8(void)
{
	FUNC0(false, FUNC4("./testrepo/ab/"));

	/* Checkout brach "subtrees" and update HEAD, so that HEAD matches the
	 * current working tree
	 */
	FUNC1(FUNC7(&g_object, g_repo, "subtrees"));
	FUNC1(FUNC2(g_repo, g_object, &g_opts));

	FUNC1(FUNC6(g_repo, "refs/heads/subtrees"));

	FUNC0(true, FUNC4("./testrepo/ab/"));
	FUNC0(true, FUNC5("./testrepo/ab/de/2.txt"));
	FUNC0(true, FUNC5("./testrepo/ab/de/fgh/1.txt"));

	FUNC3(g_object);
	g_object = NULL;

	/* Checkout brach "master" and update HEAD, so that HEAD matches the
	 * current working tree
	 */
	FUNC1(FUNC7(&g_object, g_repo, "master"));
	FUNC1(FUNC2(g_repo, g_object, &g_opts));

	FUNC1(FUNC6(g_repo, "refs/heads/master"));

	/* This directory should no longer exist */
	FUNC0(false, FUNC4("./testrepo/ab/"));
}