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
struct acpi_ec {int /*<<< orphan*/  lock; int /*<<< orphan*/  curr; } ;

/* Variables and functions */
 scalar_t__ ACPI_EC_EVT_TIMING_EVENT ; 
 int /*<<< orphan*/  FUNC0 (struct acpi_ec*) ; 
 scalar_t__ ec_event_clearing ; 
 scalar_t__ FUNC1 (struct acpi_ec*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void FUNC4(struct acpi_ec *ec)
{
	unsigned long flags;

	if (ec_event_clearing == ACPI_EC_EVT_TIMING_EVENT) {
		if (FUNC1(ec)) {
			FUNC2(&ec->lock, flags);
			/*
			 * Take care of the SCI_EVT unless no one else is
			 * taking care of it.
			 */
			if (!ec->curr)
				FUNC0(ec);
			FUNC3(&ec->lock, flags);
		}
	}
}