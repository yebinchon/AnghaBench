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
struct acpi_ec {int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 scalar_t__ EC_FLAGS_CLEAR_ON_RESUME ; 
 int /*<<< orphan*/  FUNC0 (struct acpi_ec*) ; 
 int /*<<< orphan*/  FUNC1 (struct acpi_ec*) ; 
 scalar_t__ FUNC2 (struct acpi_ec*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void FUNC5(struct acpi_ec *ec)
{
	unsigned long flags;

	FUNC3(&ec->lock, flags);
	if (FUNC2(ec))
		FUNC0(ec);
	FUNC4(&ec->lock, flags);

	/* Drain additional events if hardware requires that */
	if (EC_FLAGS_CLEAR_ON_RESUME)
		FUNC1(ec);
}