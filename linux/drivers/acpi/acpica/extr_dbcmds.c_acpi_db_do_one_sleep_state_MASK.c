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
typedef  size_t u8 ;
typedef  int /*<<< orphan*/  acpi_status ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 size_t ACPI_S_STATES_MAX ; 
 int /*<<< orphan*/  AE_INFO ; 
 int /*<<< orphan*/  FUNC2 (size_t) ; 
 int /*<<< orphan*/  FUNC3 (size_t) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * acpi_gbl_sleep_state_names ; 
 int /*<<< orphan*/  FUNC5 (size_t,size_t*,size_t*) ; 
 int /*<<< orphan*/  FUNC6 (size_t) ; 
 int /*<<< orphan*/  FUNC7 (size_t) ; 
 int /*<<< orphan*/  FUNC8 (char*,size_t,...) ; 

__attribute__((used)) static void FUNC9(u8 sleep_state)
{
	acpi_status status;
	u8 sleep_type_a;
	u8 sleep_type_b;

	/* Validate parameter */

	if (sleep_state > ACPI_S_STATES_MAX) {
		FUNC8("Sleep state %d out of range (%d max)\n",
			       sleep_state, ACPI_S_STATES_MAX);
		return;
	}

	FUNC8("\n---- Invoking sleep state S%d (%s):\n",
		       sleep_state, acpi_gbl_sleep_state_names[sleep_state]);

	/* Get the values for the sleep type registers (for display only) */

	status =
	    FUNC5(sleep_state, &sleep_type_a, &sleep_type_b);
	if (FUNC1(status)) {
		FUNC8("Could not evaluate [%s] method, %s\n",
			       acpi_gbl_sleep_state_names[sleep_state],
			       FUNC4(status));
		return;
	}

	FUNC8
	    ("Register values for sleep state S%d: Sleep-A: %.2X, Sleep-B: %.2X\n",
	     sleep_state, sleep_type_a, sleep_type_b);

	/* Invoke the various sleep/wake interfaces */

	FUNC8("**** Sleep: Prepare to sleep (S%d) ****\n",
		       sleep_state);
	status = FUNC3(sleep_state);
	if (FUNC1(status)) {
		goto error_exit;
	}

	FUNC8("**** Sleep: Going to sleep (S%d) ****\n", sleep_state);
	status = FUNC2(sleep_state);
	if (FUNC1(status)) {
		goto error_exit;
	}

	FUNC8("**** Wake: Prepare to return from sleep (S%d) ****\n",
		       sleep_state);
	status = FUNC7(sleep_state);
	if (FUNC1(status)) {
		goto error_exit;
	}

	FUNC8("**** Wake: Return from sleep (S%d) ****\n",
		       sleep_state);
	status = FUNC6(sleep_state);
	if (FUNC1(status)) {
		goto error_exit;
	}

	return;

error_exit:
	FUNC0((AE_INFO, status, "During invocation of sleep state S%d",
			sleep_state));
}