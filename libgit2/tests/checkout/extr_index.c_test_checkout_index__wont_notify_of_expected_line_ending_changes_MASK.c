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
struct TYPE_4__ {int checkout_strategy; int /*<<< orphan*/ * notify_payload; int /*<<< orphan*/  notify_cb; int /*<<< orphan*/  notify_flags; } ;
typedef  TYPE_1__ git_checkout_options ;

/* Variables and functions */
 int GIT_CHECKOUT_ALLOW_CONFLICTS ; 
 int /*<<< orphan*/  GIT_CHECKOUT_NOTIFY_CONFLICT ; 
 TYPE_1__ GIT_CHECKOUT_OPTIONS_INIT ; 
 int GIT_CHECKOUT_RECREATE_MISSING ; 
 int GIT_CHECKOUT_SAFE ; 
 int /*<<< orphan*/  FUNC0 (char*,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  dont_notify_cb ; 
 int /*<<< orphan*/  g_repo ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 

void FUNC5(void)
{
	git_checkout_options opts = GIT_CHECKOUT_OPTIONS_INIT;

	FUNC1(FUNC4("./testrepo/.gitattributes"));
	FUNC2(g_repo, "core.autocrlf", true);

	FUNC0("./testrepo/new.txt", "my new file\r\n");

	opts.checkout_strategy =
		GIT_CHECKOUT_SAFE |
		GIT_CHECKOUT_RECREATE_MISSING |
		GIT_CHECKOUT_ALLOW_CONFLICTS;
	opts.notify_flags = GIT_CHECKOUT_NOTIFY_CONFLICT;
	opts.notify_cb = dont_notify_cb;
	opts.notify_payload = NULL;

	FUNC1(FUNC3(g_repo, NULL, &opts));
}