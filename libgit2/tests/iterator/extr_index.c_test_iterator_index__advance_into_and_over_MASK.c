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
 int /*<<< orphan*/  GIT_ITERATOR_STATUS_NORMAL ; 
 int /*<<< orphan*/  GIT_ITEROVER ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  g_repo ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ **,int /*<<< orphan*/ ) ; 

void FUNC11(void)
{
	git_iterator *i;
	git_iterator_options i_opts = GIT_ITERATOR_OPTIONS_INIT;
	git_index *index;

	g_repo = FUNC2("icase");

	i_opts.flags |= GIT_ITERATOR_DONT_IGNORE_CASE |
	GIT_ITERATOR_DONT_AUTOEXPAND;

	FUNC1(FUNC10(&index, g_repo));

	FUNC3(index, NULL, 2);

	FUNC1(FUNC8(&i, g_repo, index, &i_opts));
	FUNC4(i, "B");
	FUNC4(i, "D");
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
	FUNC4(i, "item0");
	FUNC4(i, "item1/");
	FUNC4(i, "item1/item0");
	FUNC4(i, "item1/item1/");
	FUNC4(i, "item1/item1/item0");
	FUNC4(i, "item1/item1/item1");
	FUNC4(i, "item1/item1/item2");
	FUNC4(i, "item1/item1/item3");
	FUNC4(i, "item1/item1/item4");
	FUNC4(i, "item1/item1/item5");
	FUNC4(i, "item1/item1/item6");
	FUNC4(i, "item1/item1/item7");
	FUNC4(i, "item1/item2");
	FUNC5(i, "item1/item3/", GIT_ITERATOR_STATUS_NORMAL);
	FUNC5(i, "item1/item4", GIT_ITERATOR_STATUS_NORMAL);
	FUNC5(i, "item1/item5/", GIT_ITERATOR_STATUS_NORMAL);
	FUNC5(i, "item1/item6", GIT_ITERATOR_STATUS_NORMAL);
	FUNC5(i, "item1/item7/", GIT_ITERATOR_STATUS_NORMAL);
	FUNC4(i, "item2");
	FUNC5(i, "item3/", GIT_ITERATOR_STATUS_NORMAL);
	FUNC5(i, "item4", GIT_ITERATOR_STATUS_NORMAL);
	FUNC5(i, "item5/", GIT_ITERATOR_STATUS_NORMAL);
	FUNC5(i, "item6", GIT_ITERATOR_STATUS_NORMAL);
	FUNC5(i, "item7/", GIT_ITERATOR_STATUS_NORMAL);
	FUNC4(i, "k/");
	FUNC4(i, "k/1");
	FUNC4(i, "k/B");
	FUNC4(i, "k/D");
	FUNC4(i, "k/a");
	FUNC4(i, "k/c");

	FUNC0(GIT_ITEROVER, FUNC7(NULL, i));
	FUNC9(i);
	FUNC6(index);
}