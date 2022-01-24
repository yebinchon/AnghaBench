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
struct TYPE_4__ {int /*<<< orphan*/  checkout_strategy; } ;
typedef  TYPE_1__ git_checkout_options ;

/* Variables and functions */
 int /*<<< orphan*/  GIT_CHECKOUT_FORCE ; 
 TYPE_1__ GIT_CHECKOUT_OPTIONS_INIT ; 
 int /*<<< orphan*/  FUNC0 (char*,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  g_repo ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,TYPE_1__*) ; 

void FUNC6(void)
{
	git_checkout_options opts = GIT_CHECKOUT_OPTIONS_INIT;

	FUNC2();
	g_repo = FUNC3("issue_1397");

	FUNC4(g_repo, "core.autocrlf", true);

	opts.checkout_strategy = GIT_CHECKOUT_FORCE;

	FUNC1(FUNC5(g_repo, NULL, &opts));

	FUNC0("./issue_1397/crlf_file.txt", "first line\r\nsecond line\r\nboth with crlf");
}