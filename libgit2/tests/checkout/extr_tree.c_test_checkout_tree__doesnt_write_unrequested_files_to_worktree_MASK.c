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
typedef  int /*<<< orphan*/  git_oid ;
typedef  int /*<<< orphan*/  git_object ;
typedef  int /*<<< orphan*/  git_commit ;
struct TYPE_4__ {int /*<<< orphan*/  checkout_strategy; } ;
typedef  TYPE_1__ git_checkout_options ;

/* Variables and functions */
 int /*<<< orphan*/  GIT_CHECKOUT_NONE ; 
 TYPE_1__ GIT_CHECKOUT_OPTIONS_INIT ; 
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  g_repo ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 

void FUNC7(void)
{
	git_oid master_oid;
	git_oid chomped_oid;
	git_commit* p_master_commit;
	git_commit* p_chomped_commit;
	git_checkout_options opts = GIT_CHECKOUT_OPTIONS_INIT;

	FUNC5(&master_oid, "a65fedf39aefe402d3bb6e24df4d4f5fe4547750");
	FUNC5(&chomped_oid, "e90810b8df3e80c413d903f631643c716887138d");
	FUNC1(FUNC4(&p_master_commit, g_repo, &master_oid));
	FUNC1(FUNC4(&p_chomped_commit, g_repo, &chomped_oid));

	/* GIT_CHECKOUT_NONE should not add any file to the working tree from the
	 * index as it is supposed to be a dry run.
	 */
	opts.checkout_strategy = GIT_CHECKOUT_NONE;
	FUNC2(g_repo, (git_object*)p_chomped_commit, &opts);
	FUNC0(false, FUNC6("testrepo/readme.txt"));

	FUNC3(p_master_commit);
	FUNC3(p_chomped_commit);
}