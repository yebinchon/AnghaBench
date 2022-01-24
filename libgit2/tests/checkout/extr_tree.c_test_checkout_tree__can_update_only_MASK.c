#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  git_oid ;
typedef  int /*<<< orphan*/  git_object ;
struct TYPE_5__ {int checkout_strategy; } ;
typedef  TYPE_1__ git_checkout_options ;

/* Variables and functions */
 int GIT_CHECKOUT_FORCE ; 
 TYPE_1__ GIT_CHECKOUT_OPTIONS_INIT ; 
 int GIT_CHECKOUT_SAFE ; 
 int GIT_CHECKOUT_UPDATE_ONLY ; 
 int /*<<< orphan*/  GIT_OBJECT_ANY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  g_repo ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,char*) ; 

void FUNC11(void)
{
	git_checkout_options opts = GIT_CHECKOUT_OPTIONS_INIT;
	git_oid oid;
	git_object *obj = NULL;

	/* first let's get things into a known state - by checkout out the HEAD */

	FUNC0(g_repo, "master");

	opts.checkout_strategy = GIT_CHECKOUT_FORCE;
	FUNC3(FUNC4(g_repo, &opts));

	FUNC2(!FUNC8("testrepo/a"));

	FUNC1("testrepo/branch_file.txt", "hi\nbye!\n");

	/* now checkout branch but with update only */

	opts.checkout_strategy = GIT_CHECKOUT_SAFE | GIT_CHECKOUT_UPDATE_ONLY;

	FUNC3(FUNC9(&oid, g_repo, "refs/heads/dir"));
	FUNC3(FUNC7(&obj, g_repo, &oid, GIT_OBJECT_ANY));

	FUNC3(FUNC5(g_repo, obj, &opts));
	FUNC3(FUNC10(g_repo, "refs/heads/dir"));

	FUNC0(g_repo, "dir");

	/* this normally would have been created (which was tested separately in
	 * the test_checkout_tree__can_switch_branches test), but with
	 * UPDATE_ONLY it will not have been created.
	 */
	FUNC2(!FUNC8("testrepo/a"));

	/* but this file still should have been updated */
	FUNC1("testrepo/branch_file.txt", "hi\n");

	FUNC6(obj);
}