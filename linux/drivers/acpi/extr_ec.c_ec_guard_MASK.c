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
struct acpi_ec {unsigned long timestamp; int /*<<< orphan*/  wait; scalar_t__ busy_polling; int /*<<< orphan*/  polling_guard; } ;

/* Variables and functions */
 int ETIME ; 
 int /*<<< orphan*/  FUNC0 (struct acpi_ec*) ; 
 scalar_t__ FUNC1 (struct acpi_ec*) ; 
 int /*<<< orphan*/  FUNC2 (struct acpi_ec*) ; 
 int /*<<< orphan*/  jiffies ; 
 int /*<<< orphan*/  FUNC3 (unsigned long) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 unsigned long FUNC6 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ,scalar_t__,unsigned long) ; 

__attribute__((used)) static int FUNC8(struct acpi_ec *ec)
{
	unsigned long guard = FUNC6(ec->polling_guard);
	unsigned long timeout = ec->timestamp + guard;

	/* Ensure guarding period before polling EC status */
	do {
		if (ec->busy_polling) {
			/* Perform busy polling */
			if (FUNC1(ec))
				return 0;
			FUNC5(FUNC3(guard));
		} else {
			/*
			 * Perform wait polling
			 * 1. Wait the transaction to be completed by the
			 *    GPE handler after the transaction enters
			 *    ACPI_EC_COMMAND_POLL state.
			 * 2. A special guarding logic is also required
			 *    for event clearing mode "event" before the
			 *    transaction enters ACPI_EC_COMMAND_POLL
			 *    state.
			 */
			if (!FUNC2(ec) &&
			    !FUNC0(ec))
				break;
			if (FUNC7(ec->wait,
					       FUNC1(ec),
					       guard))
				return 0;
		}
	} while (FUNC4(jiffies, timeout));
	return -ETIME;
}