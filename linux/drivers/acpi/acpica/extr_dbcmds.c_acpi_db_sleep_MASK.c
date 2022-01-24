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
typedef  scalar_t__ u8 ;
typedef  scalar_t__ u32 ;
typedef  int /*<<< orphan*/  acpi_status ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/  (*) (char*)) ; 
 scalar_t__ ACPI_S_STATES_MAX ; 
 int /*<<< orphan*/  AE_OK ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

acpi_status FUNC5(char *object_arg)
{
	u8 sleep_state;
	u32 i;

	FUNC0(acpi_db_sleep);

	/* Null input (no arguments) means to invoke all sleep states */

	if (!object_arg) {
		FUNC2("Invoking all possible sleep states, 0-%d\n",
			       ACPI_S_STATES_MAX);

		for (i = 0; i <= ACPI_S_STATES_MAX; i++) {
			FUNC1((u8)i);
		}

		FUNC3(AE_OK);
	}

	/* Convert argument to binary and invoke the sleep state */

	sleep_state = (u8)FUNC4(object_arg, NULL, 0);
	FUNC1(sleep_state);
	FUNC3(AE_OK);
}