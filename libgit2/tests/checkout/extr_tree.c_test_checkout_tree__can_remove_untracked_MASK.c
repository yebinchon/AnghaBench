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
struct TYPE_4__ {int checkout_strategy; } ;
typedef  TYPE_1__ git_checkout_options ;

/* Variables and functions */
 TYPE_1__ GIT_CHECKOUT_OPTIONS_INIT ; 
 int GIT_CHECKOUT_REMOVE_UNTRACKED ; 
 int GIT_CHECKOUT_SAFE ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  g_repo ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 int FUNC4 (char*) ; 

void FUNC5(void)
{
	git_checkout_options opts = GIT_CHECKOUT_OPTIONS_INIT;

	opts.checkout_strategy = GIT_CHECKOUT_SAFE | GIT_CHECKOUT_REMOVE_UNTRACKED;

	FUNC1("testrepo/untracked_file", "as you wish");
	FUNC0(FUNC4("testrepo/untracked_file"));

	FUNC2(FUNC3(g_repo, &opts));

	FUNC0(!FUNC4("testrepo/untracked_file"));
}