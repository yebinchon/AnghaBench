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
 int GIT_CHECKOUT_ALLOW_CONFLICTS ; 
 TYPE_1__ GIT_CHECKOUT_OPTIONS_INIT ; 
 int GIT_CHECKOUT_SAFE ; 
 int /*<<< orphan*/  FUNC0 (char*,char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  g_repo ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,TYPE_1__*) ; 

void FUNC4(void)
{
	git_checkout_options opts = GIT_CHECKOUT_OPTIONS_INIT;

	FUNC1("./testrepo/new.txt", "This isn't what's stored!");

	/* set this up to not return an error code on conflicts, but it
	 * still will not have permission to overwrite anything...
	 */
	opts.checkout_strategy = GIT_CHECKOUT_SAFE | GIT_CHECKOUT_ALLOW_CONFLICTS;

	FUNC2(FUNC3(g_repo, NULL, &opts));

	FUNC0("./testrepo/new.txt", "This isn't what's stored!");
}