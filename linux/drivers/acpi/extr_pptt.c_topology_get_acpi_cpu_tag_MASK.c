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
struct acpi_pptt_processor {int flags; int acpi_processor_id; } ;

/* Variables and functions */
 int ACPI_PPTT_ACPI_PROCESSOR_ID_VALID ; 
 int FUNC0 (struct acpi_pptt_processor*,struct acpi_table_header*) ; 
 int ENOENT ; 
 struct acpi_pptt_processor* FUNC1 (struct acpi_table_header*,int /*<<< orphan*/ ) ; 
 struct acpi_pptt_processor* FUNC2 (struct acpi_table_header*,struct acpi_pptt_processor*,int,int) ; 
 int /*<<< orphan*/  FUNC3 (unsigned int) ; 
 int /*<<< orphan*/  FUNC4 (char*,unsigned int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct acpi_table_header *table,
				     unsigned int cpu, int level, int flag)
{
	struct acpi_pptt_processor *cpu_node;
	u32 acpi_cpu_id = FUNC3(cpu);

	cpu_node = FUNC1(table, acpi_cpu_id);
	if (cpu_node) {
		cpu_node = FUNC2(table, cpu_node,
						   level, flag);
		/*
		 * As per specification if the processor structure represents
		 * an actual processor, then ACPI processor ID must be valid.
		 * For processor containers ACPI_PPTT_ACPI_PROCESSOR_ID_VALID
		 * should be set if the UID is valid
		 */
		if (level == 0 ||
		    cpu_node->flags & ACPI_PPTT_ACPI_PROCESSOR_ID_VALID)
			return cpu_node->acpi_processor_id;
		return FUNC0(cpu_node, table);
	}
	FUNC4("PPTT table found, but unable to locate core %d (%d)\n",
		    cpu, acpi_cpu_id);
	return -ENOENT;
}