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
typedef  int /*<<< orphan*/  git_filter_list ;
typedef  int /*<<< orphan*/  git_filter ;

/* Variables and functions */
 int /*<<< orphan*/  GIT_FILTER_IDENT ; 
 int /*<<< orphan*/  GIT_FILTER_TO_WORKTREE ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  g_repo ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ ) ; 

void FUNC7(void)
{
	git_filter_list *fl;
	git_filter *ident;

	FUNC2(FUNC4(
		&fl, g_repo, GIT_FILTER_TO_WORKTREE, 0));

	ident = FUNC6(GIT_FILTER_IDENT);
	FUNC1(ident != NULL);

	FUNC2(FUNC5(fl, ident, NULL));

	FUNC0(
		"Hello\n$Id$\nFun stuff\n", fl,
		"Hello\n$Id: b69e2387aafcaf73c4de5b9ab59abe27fdadee30 $\nFun stuff\n");
	FUNC0(
		"Hello\n$Id: Junky$\nFun stuff\n", fl,
		"Hello\n$Id: 45cd107a7102911cb2a7df08404674327fa050b9 $\nFun stuff\n");
	FUNC0(
		"$Id$\nAt the start\n", fl,
		"$Id: b13415c767abc196fb95bd17070e8c1113e32160 $\nAt the start\n");
	FUNC0(
		"At the end\n$Id$", fl,
		"At the end\n$Id: 1344925c6bc65b34c5a7b50f86bf688e48e9a272 $");
	FUNC0(
		"$Id$", fl,
		"$Id: b3f5ebfb5843bc43ceecff6d4f26bb37c615beb1 $");
	FUNC0(
		"$Id: Some sort of junk goes here$", fl,
		"$Id: ab2dd3853c7c9a4bff55aca2bea077a73c32ac06 $");

	FUNC0("$Id: ", fl, "$Id: ");
	FUNC0("$Id", fl, "$Id");
	FUNC0("$I", fl, "$I");
	FUNC0("Id$", fl, "Id$");

	FUNC3(fl);
}