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
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  g_repo ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ **,int /*<<< orphan*/ ) ; 

void FUNC10(void)
{
	git_iterator *i;
	git_iterator_options i_opts = GIT_ITERATOR_OPTIONS_INIT;
	git_index *index;

	i_opts.flags |= GIT_ITERATOR_DONT_IGNORE_CASE |
		GIT_ITERATOR_DONT_AUTOEXPAND;

	g_repo = FUNC2("icase");
	FUNC1(FUNC9(&index, g_repo));

	FUNC3(index, NULL, 1);

	FUNC1(FUNC7(&i, g_repo, index, &i_opts));

	FUNC4(i, "B", GIT_ITERATOR_STATUS_NORMAL);
	FUNC4(i, "D", GIT_ITERATOR_STATUS_NORMAL);
	FUNC4(i, "F", GIT_ITERATOR_STATUS_NORMAL);
	FUNC4(i, "H", GIT_ITERATOR_STATUS_NORMAL);
	FUNC4(i, "J", GIT_ITERATOR_STATUS_NORMAL);
	FUNC4(i, "L/", GIT_ITERATOR_STATUS_NORMAL);
	FUNC4(i, "a", GIT_ITERATOR_STATUS_NORMAL);
	FUNC4(i, "c", GIT_ITERATOR_STATUS_NORMAL);
	FUNC4(i, "e", GIT_ITERATOR_STATUS_NORMAL);
	FUNC4(i, "g", GIT_ITERATOR_STATUS_NORMAL);
	FUNC4(i, "i", GIT_ITERATOR_STATUS_NORMAL);
	FUNC4(i, "item0", GIT_ITERATOR_STATUS_NORMAL);
	FUNC4(i, "item1/", GIT_ITERATOR_STATUS_NORMAL);
	FUNC4(i, "item2", GIT_ITERATOR_STATUS_NORMAL);
	FUNC4(i, "item3/", GIT_ITERATOR_STATUS_NORMAL);
	FUNC4(i, "item4", GIT_ITERATOR_STATUS_NORMAL);
	FUNC4(i, "item5/", GIT_ITERATOR_STATUS_NORMAL);
	FUNC4(i, "item6", GIT_ITERATOR_STATUS_NORMAL);
	FUNC4(i, "item7/", GIT_ITERATOR_STATUS_NORMAL);
	FUNC4(i, "k/", GIT_ITERATOR_STATUS_NORMAL);

	FUNC0(GIT_ITEROVER, FUNC6(NULL, i));
	FUNC8(i);
	FUNC5(index);
}