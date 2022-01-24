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
 int /*<<< orphan*/  GIT_ITERATOR_INCLUDE_TREES ; 
 TYPE_1__ GIT_ITERATOR_OPTIONS_INIT ; 
 int /*<<< orphan*/  FUNC0 (char*,int,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  g_repo ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

void FUNC6(void)
{
	git_iterator *iter;
	git_iterator_options iter_opts = GIT_ITERATOR_OPTIONS_INIT;

	g_repo = FUNC2("icase");

	FUNC0("icase", 10, 10);
	FUNC0("icase/DIR01/sUB01", 50, 0);
	FUNC0("icase/dir02/sUB01", 50, 0);

	/* auto expand with no tree entries */
	FUNC1(FUNC4(&iter, g_repo, NULL, NULL, &iter_opts));
	FUNC3(iter, 125, NULL, 125, NULL);
	FUNC5(iter);

	/* auto expand with tree entries (empty dirs silently skipped) */
	iter_opts.flags = GIT_ITERATOR_INCLUDE_TREES;
	FUNC1(FUNC4(&iter, g_repo, NULL, NULL, &iter_opts));
	FUNC3(iter, 337, NULL, 337, NULL);
	FUNC5(iter);
}