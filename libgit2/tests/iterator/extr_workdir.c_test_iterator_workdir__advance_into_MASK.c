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
struct TYPE_4__ {int flags; } ;
typedef  TYPE_1__ git_iterator_options ;
typedef  int /*<<< orphan*/  git_iterator ;

/* Variables and functions */
 int GIT_ITERATOR_DONT_AUTOEXPAND ; 
 int GIT_ITERATOR_DONT_IGNORE_CASE ; 
 TYPE_1__ GIT_ITERATOR_OPTIONS_INIT ; 
 int /*<<< orphan*/  GIT_ITEROVER ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  g_repo ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (char*,int) ; 

void FUNC9(void)
{
	git_iterator *i;
	git_iterator_options i_opts = GIT_ITERATOR_OPTIONS_INIT;

	g_repo = FUNC2("icase");

	i_opts.flags |= GIT_ITERATOR_DONT_IGNORE_CASE |
		GIT_ITERATOR_DONT_AUTOEXPAND;

	FUNC3(FUNC8("icase/Empty", 0777));

	FUNC1(FUNC6(&i, g_repo, NULL, NULL, &i_opts));
	FUNC4(i, "B");
	FUNC4(i, "D");
	FUNC4(i, "Empty/");
	FUNC4(i, "F");
	FUNC4(i, "H");
	FUNC4(i, "J");
	FUNC4(i, "L/");
	FUNC4(i, "L/1");
	FUNC4(i, "L/B");
	FUNC4(i, "L/D");
	FUNC4(i, "L/a");
	FUNC4(i, "L/c");
	FUNC4(i, "a");
	FUNC4(i, "c");
	FUNC4(i, "e");
	FUNC4(i, "g");
	FUNC4(i, "i");
	FUNC4(i, "k/");
	FUNC4(i, "k/1");
	FUNC4(i, "k/B");
	FUNC4(i, "k/D");
	FUNC4(i, "k/a");
	FUNC4(i, "k/c");

	FUNC0(GIT_ITEROVER, FUNC5(NULL, i));
	FUNC7(i);
}