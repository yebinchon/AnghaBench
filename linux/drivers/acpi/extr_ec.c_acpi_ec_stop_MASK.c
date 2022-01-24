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
struct acpi_ec {int /*<<< orphan*/  lock; int /*<<< orphan*/  flags; int /*<<< orphan*/  wait; } ;

/* Variables and functions */
 int /*<<< orphan*/  EC_FLAGS_STARTED ; 
 int /*<<< orphan*/  EC_FLAGS_STOPPED ; 
 int /*<<< orphan*/  FUNC0 (struct acpi_ec*) ; 
 int /*<<< orphan*/  FUNC1 (struct acpi_ec*) ; 
 scalar_t__ FUNC2 (struct acpi_ec*) ; 
 int /*<<< orphan*/  FUNC3 (struct acpi_ec*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 (struct acpi_ec*,char*) ; 
 int /*<<< orphan*/  ec_freeze_events ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC12(struct acpi_ec *ec, bool suspending)
{
	unsigned long flags;

	FUNC9(&ec->lock, flags);
	if (FUNC2(ec)) {
		FUNC5("Stopping EC");
		FUNC8(EC_FLAGS_STOPPED, &ec->flags);
		FUNC10(&ec->lock, flags);
		FUNC11(ec->wait, FUNC3(ec));
		FUNC9(&ec->lock, flags);
		/* Disable GPE for event processing (SCI_EVT=1) */
		if (!suspending) {
			FUNC1(ec);
			FUNC6(ec, "Decrease driver");
		} else if (!ec_freeze_events)
			FUNC0(ec);
		FUNC4(EC_FLAGS_STARTED, &ec->flags);
		FUNC4(EC_FLAGS_STOPPED, &ec->flags);
		FUNC7("EC stopped");
	}
	FUNC10(&ec->lock, flags);
}