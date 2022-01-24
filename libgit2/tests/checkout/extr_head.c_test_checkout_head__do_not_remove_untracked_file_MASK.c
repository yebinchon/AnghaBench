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
 int FUNC7 (char*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ **,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (char*,int) ; 

void FUNC10(void)
{
	git_checkout_options opts = GIT_CHECKOUT_OPTIONS_INIT;
	git_index *index;

	FUNC2(FUNC9("testrepo/tracked", 0755));
	FUNC1("testrepo/tracked/tracked", "tracked\n");
	FUNC1("testrepo/tracked/untracked", "untracked\n");

	FUNC2(FUNC8(&index, g_repo));
	FUNC2(FUNC4(index, "tracked/tracked"));
	FUNC2(FUNC6(index));

	FUNC5(index);

	opts.checkout_strategy = GIT_CHECKOUT_FORCE;
	FUNC2(FUNC3(g_repo, &opts));

	FUNC0(!FUNC7("testrepo/tracked/tracked"));
	FUNC0(FUNC7("testrepo/tracked/untracked"));
}