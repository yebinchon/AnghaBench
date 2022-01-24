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
struct acpi_ec {int /*<<< orphan*/  flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  EC_FLAGS_QUERY_ENABLED ; 
 int /*<<< orphan*/  FUNC0 (struct acpi_ec*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static inline void FUNC3(struct acpi_ec *ec)
{
	if (!FUNC2(EC_FLAGS_QUERY_ENABLED, &ec->flags))
		FUNC1("event unblocked");
	/*
	 * Unconditionally invoke this once after enabling the event
	 * handling mechanism to detect the pending events.
	 */
	FUNC0(ec);
}