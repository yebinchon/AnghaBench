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
struct acpi_ec {int dummy; } ;

/* Variables and functions */
 int ACPI_EC_CLEAR_MAX ; 
 int FUNC0 (struct acpi_ec*,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC1 (char*,int) ; 
 int /*<<< orphan*/  FUNC2 (char*,int) ; 
 scalar_t__ FUNC3 (int) ; 

__attribute__((used)) static void FUNC4(struct acpi_ec *ec)
{
	int i, status;
	u8 value = 0;

	for (i = 0; i < ACPI_EC_CLEAR_MAX; i++) {
		status = FUNC0(ec, &value);
		if (status || !value)
			break;
	}
	if (FUNC3(i == ACPI_EC_CLEAR_MAX))
		FUNC2("Warning: Maximum of %d stale EC events cleared\n", i);
	else
		FUNC1("%d stale EC events cleared\n", i);
}