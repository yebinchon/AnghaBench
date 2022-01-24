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
struct inode {int dummy; } ;
struct file {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  IPMI_SET_TIMEOUT_NO_HB ; 
 scalar_t__ WATCHDOG_MINOR ; 
 int /*<<< orphan*/  WDOG_TIMEOUT_NONE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int expect_close ; 
 scalar_t__ FUNC2 (struct inode*) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  ipmi_watchdog_mutex ; 
 int /*<<< orphan*/  ipmi_watchdog_state ; 
 int /*<<< orphan*/  ipmi_wdog_open ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 

__attribute__((used)) static int FUNC7(struct inode *ino, struct file *filep)
{
	if (FUNC2(ino) == WATCHDOG_MINOR) {
		if (expect_close == 42) {
			FUNC4(&ipmi_watchdog_mutex);
			ipmi_watchdog_state = WDOG_TIMEOUT_NONE;
			FUNC0(IPMI_SET_TIMEOUT_NO_HB);
			FUNC5(&ipmi_watchdog_mutex);
		} else {
			FUNC6("Unexpected close, not stopping watchdog!\n");
			FUNC3();
		}
		FUNC1(0, &ipmi_wdog_open);
	}

	expect_close = 0;

	return 0;
}