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
typedef  int /*<<< orphan*/  u32 ;
struct acpi_table_header {int dummy; } ;
typedef  int /*<<< orphan*/  acpi_status ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ACPI_SIG_PPTT ; 
 int FUNC1 (struct acpi_table_header*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct acpi_table_header**) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (struct acpi_table_header*) ; 
 int /*<<< orphan*/  FUNC5 (unsigned int) ; 
 int /*<<< orphan*/  FUNC6 (char*,int) ; 

int FUNC7(unsigned int cpu)
{
	u32 acpi_cpu_id;
	struct acpi_table_header *table;
	int number_of_levels = 0;
	acpi_status status;

	FUNC6("Cache Setup find last level CPU=%d\n", cpu);

	acpi_cpu_id = FUNC5(cpu);
	status = FUNC2(ACPI_SIG_PPTT, 0, &table);
	if (FUNC0(status)) {
		FUNC3();
	} else {
		number_of_levels = FUNC1(table, acpi_cpu_id);
		FUNC4(table);
	}
	FUNC6("Cache Setup find last level level=%d\n", number_of_levels);

	return number_of_levels;
}