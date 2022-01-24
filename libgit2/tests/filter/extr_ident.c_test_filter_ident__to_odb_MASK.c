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
 int /*<<< orphan*/  GIT_FILTER_TO_ODB ; 
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
		&fl, g_repo, GIT_FILTER_TO_ODB, 0));

	ident = FUNC6(GIT_FILTER_IDENT);
	FUNC1(ident != NULL);

	FUNC2(FUNC5(fl, ident, NULL));

	FUNC0(
		"Hello\n$Id$\nFun stuff\n",
		fl, "Hello\n$Id$\nFun stuff\n");
	FUNC0(
		"Hello\n$Id: b69e2387aafcaf73c4de5b9ab59abe27fdadee30$\nFun stuff\n",
		fl, "Hello\n$Id$\nFun stuff\n");
	FUNC0(
		"Hello\n$Id: Any junk you may have left here$\nFun stuff\n",
		fl, "Hello\n$Id$\nFun stuff\n");
	FUNC0(
		"Hello\n$Id:$\nFun stuff\n",
		fl, "Hello\n$Id$\nFun stuff\n");
	FUNC0(
		"Hello\n$Id:x$\nFun stuff\n",
		fl, "Hello\n$Id$\nFun stuff\n");

	FUNC0(
		"$Id$\nAt the start\n", fl, "$Id$\nAt the start\n");
	FUNC0(
		"$Id: lots of random text that should be removed from here$\nAt the start\n", fl, "$Id$\nAt the start\n");
	FUNC0(
		"$Id: lots of random text that should not be removed without a terminator\nAt the start\n", fl, "$Id: lots of random text that should not be removed without a terminator\nAt the start\n");

	FUNC0(
		"At the end\n$Id$", fl, "At the end\n$Id$");
	FUNC0(
		"At the end\n$Id:$", fl, "At the end\n$Id$");
	FUNC0(
		"At the end\n$Id:asdfasdf$", fl, "At the end\n$Id$");
	FUNC0(
		"At the end\n$Id", fl, "At the end\n$Id");
	FUNC0(
		"At the end\n$IddI", fl, "At the end\n$IddI");

	FUNC0("$Id$", fl, "$Id$");
	FUNC0("$Id: any$", fl, "$Id$");
	FUNC0("$Id: any long stuff goes here you see$", fl, "$Id$");
	FUNC0("$Id: ", fl, "$Id: ");
	FUNC0("$Id", fl, "$Id");
	FUNC0("$I", fl, "$I");
	FUNC0("Id$", fl, "Id$");

	FUNC3(fl);
}