#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct ipmi_user {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (struct ipmi_user*) ; 
 int ipmi_start_timer_on_heartbeat ; 
 int /*<<< orphan*/  ipmi_watchdog_mutex ; 
 int /*<<< orphan*/  ipmi_wdog_miscdev ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  msg_tofree ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (char*,int) ; 
 int watchdog_ifnum ; 
 struct ipmi_user* watchdog_user ; 

__attribute__((used)) static void FUNC7(int ipmi_intf)
{
	int rv;
	struct ipmi_user *loc_user = watchdog_user;

	if (!loc_user)
		return;

	if (watchdog_ifnum != ipmi_intf)
		return;

	/* Make sure no one can call us any more. */
	FUNC2(&ipmi_wdog_miscdev);

	watchdog_user = NULL;

	/*
	 * Wait to make sure the message makes it out.  The lower layer has
	 * pointers to our buffers, we want to make sure they are done before
	 * we release our memory.
	 */
	while (FUNC0(&msg_tofree))
		FUNC3(NULL);

	FUNC4(&ipmi_watchdog_mutex);

	/* Disconnect from IPMI. */
	rv = FUNC1(loc_user);
	if (rv)
		FUNC6("error unlinking from IPMI: %d\n",  rv);

	/* If it comes back, restart it properly. */
	ipmi_start_timer_on_heartbeat = 1;

	FUNC5(&ipmi_watchdog_mutex);
}