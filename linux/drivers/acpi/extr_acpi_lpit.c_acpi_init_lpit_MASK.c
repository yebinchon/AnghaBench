#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u64 ;
struct TYPE_2__ {scalar_t__ length; } ;
struct acpi_table_lpit {TYPE_1__ header; } ;
struct acpi_table_header {int dummy; } ;
typedef  int /*<<< orphan*/  acpi_status ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ACPI_SIG_LPIT ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct acpi_table_header**) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,scalar_t__) ; 

void FUNC3(void)
{
	acpi_status status;
	struct acpi_table_lpit *lpit;

	status = FUNC1(ACPI_SIG_LPIT, 0, (struct acpi_table_header **)&lpit);

	if (FUNC0(status))
		return;

	FUNC2((u64)lpit + sizeof(*lpit),
		     (u64)lpit + lpit->header.length);
}