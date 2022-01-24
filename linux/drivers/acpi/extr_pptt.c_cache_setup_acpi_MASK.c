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
struct acpi_table_header {int dummy; } ;
typedef  int acpi_status ;

/* Variables and functions */
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  ACPI_SIG_PPTT ; 
 int ENOENT ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct acpi_table_header**) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (struct acpi_table_header*) ; 
 int /*<<< orphan*/  FUNC4 (struct acpi_table_header*,unsigned int) ; 
 int /*<<< orphan*/  FUNC5 (char*,unsigned int) ; 

int FUNC6(unsigned int cpu)
{
	struct acpi_table_header *table;
	acpi_status status;

	FUNC5("Cache Setup ACPI CPU %d\n", cpu);

	status = FUNC1(ACPI_SIG_PPTT, 0, &table);
	if (FUNC0(status)) {
		FUNC2();
		return -ENOENT;
	}

	FUNC4(table, cpu);
	FUNC3(table);

	return status;
}