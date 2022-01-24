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
typedef  int u32 ;
struct acpi_table_header {int revision; } ;
struct acpi_pptt_processor {int flags; } ;
typedef  int /*<<< orphan*/  acpi_status ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ACPI_SIG_PPTT ; 
 int ENOENT ; 
 struct acpi_pptt_processor* FUNC1 (struct acpi_table_header*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct acpi_table_header**) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (struct acpi_table_header*) ; 
 int FUNC5 (unsigned int) ; 

__attribute__((used)) static int FUNC6(unsigned int cpu, int rev, u32 flag)
{
	struct acpi_table_header *table;
	acpi_status status;
	u32 acpi_cpu_id = FUNC5(cpu);
	struct acpi_pptt_processor *cpu_node = NULL;
	int ret = -ENOENT;

	status = FUNC2(ACPI_SIG_PPTT, 0, &table);
	if (FUNC0(status)) {
		FUNC3();
		return ret;
	}

	if (table->revision >= rev)
		cpu_node = FUNC1(table, acpi_cpu_id);

	if (cpu_node)
		ret = (cpu_node->flags & flag) != 0;

	FUNC4(table);

	return ret;
}