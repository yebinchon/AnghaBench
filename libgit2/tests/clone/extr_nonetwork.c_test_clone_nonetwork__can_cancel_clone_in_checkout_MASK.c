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
struct TYPE_4__ {char* notify_payload; int /*<<< orphan*/  notify_cb; int /*<<< orphan*/  notify_flags; } ;
struct TYPE_5__ {char* checkout_branch; TYPE_1__ checkout_opts; } ;

/* Variables and functions */
 int /*<<< orphan*/  GIT_CHECKOUT_NOTIFY_UPDATED ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  clone_cancel_checkout_cb ; 
 TYPE_2__ g_options ; 
 int /*<<< orphan*/  g_repo ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 

void FUNC5(void)
{
	g_options.checkout_branch = "test";

	g_options.checkout_opts.notify_flags = GIT_CHECKOUT_NOTIFY_UPDATED;
	g_options.checkout_opts.notify_cb = clone_cancel_checkout_cb;
	g_options.checkout_opts.notify_payload = "readme.txt";

	FUNC1(FUNC3(
		&g_repo, FUNC2("testrepo.git"), "./foo", &g_options),
		-12345);

	FUNC0(!g_repo);
	FUNC0(!FUNC4("foo/readme.txt"));
}