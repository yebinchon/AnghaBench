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
 int GIT_ITERATOR_INCLUDE_CONFLICTS ; 
 TYPE_1__ GIT_ITERATOR_OPTIONS_INIT ; 
 int /*<<< orphan*/  GIT_ITERATOR_STATUS_NORMAL ; 
 int /*<<< orphan*/  GIT_ITEROVER ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,char*,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
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

	g_repo = FUNC3("icase");
	FUNC2(FUNC9(&index, g_repo));

	FUNC0(index, "CONFLICT1", "CONFLICT1" ,"CONFLICT1");
	FUNC0(index, "ZZZ-CONFLICT2.ancestor", "ZZZ-CONFLICT2.ours", "ZZZ-CONFLICT2.theirs");
	FUNC0(index, "ancestor.conflict3", "ours.conflict3", "theirs.conflict3");
	FUNC0(index, "zzz-conflict4", "zzz-conflict4", "zzz-conflict4");

	/* Iterate the index, ensuring that conflicts are not included */
	FUNC2(FUNC7(&i, g_repo, index, &i_opts));

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
	FUNC4(i, "k/", GIT_ITERATOR_STATUS_NORMAL);

	FUNC1(GIT_ITEROVER, FUNC6(NULL, i));
	FUNC8(i);

	/* Try again, returning conflicts */
	i_opts.flags |= GIT_ITERATOR_INCLUDE_CONFLICTS;

	FUNC2(FUNC7(&i, g_repo, index, &i_opts));

	FUNC4(i, "B", GIT_ITERATOR_STATUS_NORMAL);
	FUNC4(i, "CONFLICT1", GIT_ITERATOR_STATUS_NORMAL);
	FUNC4(i, "CONFLICT1", GIT_ITERATOR_STATUS_NORMAL);
	FUNC4(i, "CONFLICT1", GIT_ITERATOR_STATUS_NORMAL);
	FUNC4(i, "D", GIT_ITERATOR_STATUS_NORMAL);
	FUNC4(i, "F", GIT_ITERATOR_STATUS_NORMAL);
	FUNC4(i, "H", GIT_ITERATOR_STATUS_NORMAL);
	FUNC4(i, "J", GIT_ITERATOR_STATUS_NORMAL);
	FUNC4(i, "L/", GIT_ITERATOR_STATUS_NORMAL);
	FUNC4(i, "ZZZ-CONFLICT2.ancestor", GIT_ITERATOR_STATUS_NORMAL);
	FUNC4(i, "ZZZ-CONFLICT2.ours", GIT_ITERATOR_STATUS_NORMAL);
	FUNC4(i, "ZZZ-CONFLICT2.theirs", GIT_ITERATOR_STATUS_NORMAL);
	FUNC4(i, "a", GIT_ITERATOR_STATUS_NORMAL);
	FUNC4(i, "ancestor.conflict3", GIT_ITERATOR_STATUS_NORMAL);
	FUNC4(i, "c", GIT_ITERATOR_STATUS_NORMAL);
	FUNC4(i, "e", GIT_ITERATOR_STATUS_NORMAL);
	FUNC4(i, "g", GIT_ITERATOR_STATUS_NORMAL);
	FUNC4(i, "i", GIT_ITERATOR_STATUS_NORMAL);
	FUNC4(i, "k/", GIT_ITERATOR_STATUS_NORMAL);
	FUNC4(i, "ours.conflict3", GIT_ITERATOR_STATUS_NORMAL);
	FUNC4(i, "theirs.conflict3", GIT_ITERATOR_STATUS_NORMAL);
	FUNC4(i, "zzz-conflict4", GIT_ITERATOR_STATUS_NORMAL);
	FUNC4(i, "zzz-conflict4", GIT_ITERATOR_STATUS_NORMAL);
	FUNC4(i, "zzz-conflict4", GIT_ITERATOR_STATUS_NORMAL);

	FUNC1(GIT_ITEROVER, FUNC6(NULL, i));
	FUNC8(i);

	FUNC5(index);
}