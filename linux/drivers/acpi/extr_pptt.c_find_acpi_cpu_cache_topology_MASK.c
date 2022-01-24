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
struct acpi_pptt_processor {int dummy; } ;
struct acpi_pptt_cache {int dummy; } ;
typedef  int /*<<< orphan*/  acpi_status ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (struct acpi_pptt_processor*,struct acpi_table_header*) ; 
 int /*<<< orphan*/  ACPI_SIG_PPTT ; 
 int /*<<< orphan*/  CACHE_TYPE_UNIFIED ; 
 int ENOENT ; 
 struct acpi_pptt_cache* FUNC2 (struct acpi_table_header*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,struct acpi_pptt_processor**) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct acpi_table_header**) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (struct acpi_table_header*) ; 
 int /*<<< orphan*/  FUNC6 (unsigned int) ; 

int FUNC7(unsigned int cpu, int level)
{
	struct acpi_table_header *table;
	struct acpi_pptt_cache *found_cache;
	acpi_status status;
	u32 acpi_cpu_id = FUNC6(cpu);
	struct acpi_pptt_processor *cpu_node = NULL;
	int ret = -1;

	status = FUNC3(ACPI_SIG_PPTT, 0, &table);
	if (FUNC0(status)) {
		FUNC4();
		return -ENOENT;
	}

	found_cache = FUNC2(table, acpi_cpu_id,
					   CACHE_TYPE_UNIFIED,
					   level,
					   &cpu_node);
	if (found_cache)
		ret = FUNC1(cpu_node, table);

	FUNC5(table);

	return ret;
}