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

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int*) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  panic_done_count ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  panic_halt_recv_msg ; 
 int /*<<< orphan*/  panic_halt_smi_msg ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 int /*<<< orphan*/  watchdog_user ; 

__attribute__((used)) static void FUNC7(void)
{
	int send_heartbeat_now;
	int rv;

	/* Wait for the messages to be free. */
	while (FUNC2(&panic_done_count) != 0)
		FUNC4(watchdog_user);
	FUNC1(1, &panic_done_count);
	rv = FUNC0(&panic_halt_smi_msg,
				&panic_halt_recv_msg,
				&send_heartbeat_now);
	if (rv) {
		FUNC3(1, &panic_done_count);
		FUNC6("Unable to extend the watchdog timeout\n");
	} else {
		if (send_heartbeat_now)
			FUNC5();
	}
	while (FUNC2(&panic_done_count) != 0)
		FUNC4(watchdog_user);
}