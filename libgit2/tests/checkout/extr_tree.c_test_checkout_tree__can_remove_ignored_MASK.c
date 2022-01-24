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
 int GIT_CHECKOUT_REMOVE_IGNORED ; 
 int GIT_CHECKOUT_SAFE ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int,int) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  g_repo ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC6 (int*,int /*<<< orphan*/ ,char*) ; 
 int FUNC7 (char*) ; 

void FUNC8(void)
{
	git_checkout_options opts = GIT_CHECKOUT_OPTIONS_INIT;
	int ignored = 0;

	opts.checkout_strategy = GIT_CHECKOUT_SAFE | GIT_CHECKOUT_REMOVE_IGNORED;

	FUNC2("testrepo/ignored_file", "as you wish");

	FUNC3(FUNC5(g_repo, "ignored_file\n"));

	FUNC3(FUNC6(&ignored, g_repo, "ignored_file"));
	FUNC1(1, ignored);

	FUNC0(FUNC7("testrepo/ignored_file"));

	FUNC3(FUNC4(g_repo, &opts));

	FUNC0(!FUNC7("testrepo/ignored_file"));
}