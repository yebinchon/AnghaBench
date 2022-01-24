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
typedef  int /*<<< orphan*/  git_index ;

/* Variables and functions */
 int GIT_ITERATOR_DONT_AUTOEXPAND ; 
 int GIT_ITERATOR_DONT_IGNORE_CASE ; 
 TYPE_1__ GIT_ITERATOR_OPTIONS_INIT ; 
 int /*<<< orphan*/  GIT_ITEROVER ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  g_repo ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ **,int /*<<< orphan*/ ) ; 

void FUNC9(void)
{
	git_iterator *i;
	git_iterator_options i_opts = GIT_ITERATOR_OPTIONS_INIT;
	git_index *index;

	g_repo = FUNC2("icase");

	i_opts.flags |= GIT_ITERATOR_DONT_IGNORE_CASE |
		GIT_ITERATOR_DONT_AUTOEXPAND;

	FUNC1(FUNC8(&index, g_repo));

	FUNC1(FUNC6(&i, g_repo, index, &i_opts));
	FUNC3(i, "B");
	FUNC3(i, "D");
	FUNC3(i, "F");
	FUNC3(i, "H");
	FUNC3(i, "J");
	FUNC3(i, "L/");
	FUNC3(i, "L/1");
	FUNC3(i, "L/B");
	FUNC3(i, "L/D");
	FUNC3(i, "L/a");
	FUNC3(i, "L/c");
	FUNC3(i, "a");
	FUNC3(i, "c");
	FUNC3(i, "e");
	FUNC3(i, "g");
	FUNC3(i, "i");
	FUNC3(i, "k/");
	FUNC3(i, "k/1");
	FUNC3(i, "k/B");
	FUNC3(i, "k/D");
	FUNC3(i, "k/a");
	FUNC3(i, "k/c");

	FUNC0(GIT_ITEROVER, FUNC5(NULL, i));
	FUNC7(i);
	FUNC4(index);
}