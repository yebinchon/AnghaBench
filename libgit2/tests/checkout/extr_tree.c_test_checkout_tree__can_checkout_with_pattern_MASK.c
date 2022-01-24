#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {char** strings; int count; } ;
struct TYPE_5__ {int checkout_strategy; TYPE_1__ paths; } ;

/* Variables and functions */
 int GIT_CHECKOUT_FORCE ; 
 int GIT_CHECKOUT_REMOVE_UNTRACKED ; 
 int GIT_CHECKOUT_SAFE ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * g_object ; 
 TYPE_2__ g_opts ; 
 int /*<<< orphan*/  g_repo ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,char*) ; 

void FUNC8(void)
{
	char *entries[] = { "[l-z]*.txt" };

	/* reset to beginning of history (i.e. just a README file) */

	g_opts.checkout_strategy =
		GIT_CHECKOUT_FORCE | GIT_CHECKOUT_REMOVE_UNTRACKED;

	FUNC1(FUNC7(&g_object, g_repo, "8496071c1b46c854b31185ea97743be6a8774479"));

	FUNC1(FUNC2(g_repo, g_object, &g_opts));
	FUNC1(
		FUNC6(g_repo, FUNC4(g_object)));

	FUNC3(g_object);
	g_object = NULL;

	FUNC0(FUNC5("testrepo/README"));
	FUNC0(!FUNC5("testrepo/branch_file.txt"));
	FUNC0(!FUNC5("testrepo/link_to_new.txt"));
	FUNC0(!FUNC5("testrepo/new.txt"));

	/* now to a narrow patterned checkout */

	g_opts.checkout_strategy = GIT_CHECKOUT_SAFE;
	g_opts.paths.strings = entries;
	g_opts.paths.count = 1;

	FUNC1(FUNC7(&g_object, g_repo, "refs/heads/master"));

	FUNC1(FUNC2(g_repo, g_object, &g_opts));

	FUNC0(FUNC5("testrepo/README"));
	FUNC0(!FUNC5("testrepo/branch_file.txt"));
	FUNC0(FUNC5("testrepo/link_to_new.txt"));
	FUNC0(FUNC5("testrepo/new.txt"));
}