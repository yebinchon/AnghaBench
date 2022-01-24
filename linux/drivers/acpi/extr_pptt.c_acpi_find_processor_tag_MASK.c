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
struct acpi_pptt_processor {int flags; int /*<<< orphan*/  parent; } ;

/* Variables and functions */
 int ACPI_PPTT_ACPI_IDENTICAL ; 
 struct acpi_pptt_processor* FUNC0 (struct acpi_table_header*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (struct acpi_table_header*,struct acpi_pptt_processor*) ; 
 int /*<<< orphan*/  FUNC2 (char*,int) ; 

__attribute__((used)) static struct acpi_pptt_processor *FUNC3(struct acpi_table_header *table_hdr,
							   struct acpi_pptt_processor *cpu,
							   int level, int flag)
{
	struct acpi_pptt_processor *prev_node;

	while (cpu && level) {
		/* special case the identical flag to find last identical */
		if (flag == ACPI_PPTT_ACPI_IDENTICAL) {
			if (FUNC1(table_hdr, cpu))
				break;
		} else if (cpu->flags & flag)
			break;
		FUNC2("level %d\n", level);
		prev_node = FUNC0(table_hdr, cpu->parent);
		if (prev_node == NULL)
			break;
		cpu = prev_node;
		level--;
	}
	return cpu;
}