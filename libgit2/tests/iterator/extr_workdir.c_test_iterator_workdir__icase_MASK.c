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
struct TYPE_4__ {int /*<<< orphan*/  flags; } ;
typedef  TYPE_1__ git_iterator_options ;
typedef  int /*<<< orphan*/  git_iterator ;

/* Variables and functions */
 int /*<<< orphan*/  GIT_ITERATOR_DONT_AUTOEXPAND ; 
 int /*<<< orphan*/  GIT_ITERATOR_INCLUDE_TREES ; 
 TYPE_1__ GIT_ITERATOR_OPTIONS_INIT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  g_repo ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

void FUNC5(void)
{
	git_iterator *i;
	git_iterator_options i_opts = GIT_ITERATOR_OPTIONS_INIT;

	g_repo = FUNC1("icase");

	/* auto expand with no tree entries */
	FUNC0(FUNC3(&i, g_repo, NULL, NULL, &i_opts));
	FUNC2(i, 20, NULL, 20, NULL);
	FUNC4(i);

	/* auto expand with tree entries */
	i_opts.flags = GIT_ITERATOR_INCLUDE_TREES;
	FUNC0(FUNC3(&i, g_repo, NULL, NULL, &i_opts));
	FUNC2(i, 22, NULL, 22, NULL);
	FUNC4(i);

	/* no auto expand (implies trees included) */
	i_opts.flags = GIT_ITERATOR_DONT_AUTOEXPAND;
	FUNC0(FUNC3(&i, g_repo, NULL, NULL, &i_opts));
	FUNC2(i, 12, NULL, 22, NULL);
	FUNC4(i);
}