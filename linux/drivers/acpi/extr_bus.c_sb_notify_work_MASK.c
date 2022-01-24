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
struct work_struct {int dummy; } ;
typedef  int /*<<< orphan*/  acpi_handle ;

/* Variables and functions */
 int /*<<< orphan*/  ACPI_OST_EC_OSPM_SHUTDOWN ; 
 int /*<<< orphan*/  ACPI_OST_SC_OS_SHUTDOWN_IN_PROGRESS ; 
 int /*<<< orphan*/  ACPI_SB_INDICATE_INTERVAL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 

__attribute__((used)) static void FUNC5(struct work_struct *dummy)
{
	acpi_handle sb_handle;

	FUNC3(true);

	/*
	 * After initiating graceful shutdown, the ACPI spec requires OSPM
	 * to evaluate _OST method once every 10seconds to indicate that
	 * the shutdown is in progress
	 */
	FUNC1(NULL, "\\_SB", &sb_handle);
	while (1) {
		FUNC4("Graceful shutdown in progress.\n");
		FUNC0(sb_handle, ACPI_OST_EC_OSPM_SHUTDOWN,
				ACPI_OST_SC_OS_SHUTDOWN_IN_PROGRESS, NULL);
		FUNC2(ACPI_SB_INDICATE_INTERVAL);
	}
}