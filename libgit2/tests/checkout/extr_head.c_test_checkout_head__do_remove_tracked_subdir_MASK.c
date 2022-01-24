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
typedef  int /*<<< orphan*/  git_index ;
struct TYPE_4__ {int /*<<< orphan*/  checkout_strategy; } ;
typedef  TYPE_1__ git_checkout_options ;

/* Variables and functions */
 int /*<<< orphan*/  GIT_CHECKOUT_FORCE ; 
 TYPE_1__ GIT_CHECKOUT_OPTIONS_INIT ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  g_repo ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 int FUNC8 (char*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ **,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (char*,int) ; 

void FUNC11(void)
{
	git_checkout_options opts = GIT_CHECKOUT_OPTIONS_INIT;
	git_index *index;

	FUNC2(FUNC10("testrepo/subdir", 0755));
	FUNC2(FUNC10("testrepo/subdir/tracked", 0755));
	FUNC1("testrepo/subdir/tracked-file", "tracked\n");
	FUNC1("testrepo/subdir/untracked-file", "untracked\n");
	FUNC1("testrepo/subdir/tracked/tracked1", "tracked\n");
	FUNC1("testrepo/subdir/tracked/tracked2", "tracked\n");

	FUNC2(FUNC9(&index, g_repo));
	FUNC2(FUNC4(index, "subdir/tracked-file"));
	FUNC2(FUNC4(index, "subdir/tracked/tracked1"));
	FUNC2(FUNC4(index, "subdir/tracked/tracked2"));
	FUNC2(FUNC6(index));

	FUNC5(index);

	opts.checkout_strategy = GIT_CHECKOUT_FORCE;
	FUNC2(FUNC3(g_repo, &opts));

	FUNC0(!FUNC7("testrepo/subdir/tracked"));
	FUNC0(!FUNC8("testrepo/subdir/tracked-file"));
	FUNC0(FUNC8("testrepo/subdir/untracked-file"));
}