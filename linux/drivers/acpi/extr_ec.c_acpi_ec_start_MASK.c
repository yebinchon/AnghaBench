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
struct acpi_ec {int /*<<< orphan*/  lock; int /*<<< orphan*/  flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  EC_FLAGS_STARTED ; 
 int /*<<< orphan*/  FUNC0 (struct acpi_ec*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (struct acpi_ec*,char*) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC7(struct acpi_ec *ec, bool resuming)
{
	unsigned long flags;

	FUNC4(&ec->lock, flags);
	if (!FUNC6(EC_FLAGS_STARTED, &ec->flags)) {
		FUNC1("Starting EC");
		/* Enable GPE for event processing (SCI_EVT=1) */
		if (!resuming) {
			FUNC0(ec);
			FUNC2(ec, "Increase driver");
		}
		FUNC3("EC started");
	}
	FUNC5(&ec->lock, flags);
}