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
struct acpi_pptt_processor {int /*<<< orphan*/  parent; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct acpi_table_header*,struct acpi_pptt_processor*,int*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct acpi_pptt_processor* FUNC1 (struct acpi_table_header*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(struct acpi_table_header *table_hdr,
			     struct acpi_pptt_processor *cpu_node)
{
	int total_levels = 0;

	do {
		FUNC0(table_hdr, cpu_node, &total_levels, 0, 0);
		cpu_node = FUNC1(table_hdr, cpu_node->parent);
	} while (cpu_node);

	return total_levels;
}