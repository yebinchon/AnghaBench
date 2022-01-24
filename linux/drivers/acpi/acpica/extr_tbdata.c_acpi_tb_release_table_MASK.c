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
typedef  int u8 ;
typedef  int /*<<< orphan*/  u32 ;
struct acpi_table_header {int dummy; } ;

/* Variables and functions */
#define  ACPI_TABLE_ORIGIN_EXTERNAL_VIRTUAL 130 
#define  ACPI_TABLE_ORIGIN_INTERNAL_PHYSICAL 129 
#define  ACPI_TABLE_ORIGIN_INTERNAL_VIRTUAL 128 
 int ACPI_TABLE_ORIGIN_MASK ; 
 int /*<<< orphan*/  FUNC0 (struct acpi_table_header*,int /*<<< orphan*/ ) ; 

void
FUNC1(struct acpi_table_header *table,
		      u32 table_length, u8 table_flags)
{

	switch (table_flags & ACPI_TABLE_ORIGIN_MASK) {
	case ACPI_TABLE_ORIGIN_INTERNAL_PHYSICAL:

		FUNC0(table, table_length);
		break;

	case ACPI_TABLE_ORIGIN_INTERNAL_VIRTUAL:
	case ACPI_TABLE_ORIGIN_EXTERNAL_VIRTUAL:
	default:

		break;
	}
}