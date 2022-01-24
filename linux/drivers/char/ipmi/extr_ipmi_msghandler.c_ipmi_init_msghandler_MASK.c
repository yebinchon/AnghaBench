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
 scalar_t__ IPMI_TIMEOUT_JIFFIES ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int initialized ; 
 int /*<<< orphan*/  ipmi_interfaces_mutex ; 
 int /*<<< orphan*/  ipmi_interfaces_srcu ; 
 int FUNC2 () ; 
 int /*<<< orphan*/  ipmi_timeout ; 
 int /*<<< orphan*/  ipmi_timer ; 
 scalar_t__ jiffies ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  panic_block ; 
 int /*<<< orphan*/  panic_notifier_list ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC7(void)
{
	int rv;

	FUNC4(&ipmi_interfaces_mutex);
	rv = FUNC2();
	if (rv)
		goto out;
	if (initialized)
		goto out;

	FUNC1(&ipmi_interfaces_srcu);

	FUNC6(&ipmi_timer, ipmi_timeout, 0);
	FUNC3(&ipmi_timer, jiffies + IPMI_TIMEOUT_JIFFIES);

	FUNC0(&panic_notifier_list, &panic_block);

	initialized = true;

out:
	FUNC5(&ipmi_interfaces_mutex);
	return rv;
}