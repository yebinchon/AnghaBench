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
typedef  scalar_t__ u64 ;
typedef  int /*<<< orphan*/  acpi_status ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 scalar_t__ ACPI_MAX_SLEEP ; 
 int /*<<< orphan*/  AE_OK ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 

acpi_status FUNC4(u64 how_long)
{
	FUNC0();

	/* Since this thread will sleep, we must release the interpreter */

	FUNC2();

	/*
	 * For compatibility with other ACPI implementations and to prevent
	 * accidental deep sleeps, limit the sleep time to something reasonable.
	 */
	if (how_long > ACPI_MAX_SLEEP) {
		how_long = ACPI_MAX_SLEEP;
	}

	FUNC3(how_long);

	/* And now we must get the interpreter again */

	FUNC1();
	return (AE_OK);
}