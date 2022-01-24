#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct acpi_table_header {scalar_t__ oem_revision; int /*<<< orphan*/  oem_table_id; int /*<<< orphan*/  oem_id; } ;
typedef  int /*<<< orphan*/  acpi_status ;
struct TYPE_3__ {scalar_t__ oem_revision; int /*<<< orphan*/  oem_table_id; int /*<<< orphan*/  oem_id; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ACPI_OEM_ID_SIZE ; 
 int /*<<< orphan*/  ACPI_OEM_TABLE_ID_SIZE ; 
 int /*<<< orphan*/  ACPI_SIG_PCCT ; 
 int /*<<< orphan*/  AE_OK ; 
 int FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct acpi_table_header**) ; 
 int apply_hisi_workaround ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_1__* wa_info ; 

__attribute__((used)) static void FUNC4(void)
{
	struct acpi_table_header *tbl;
	acpi_status status = AE_OK;
	int i;

	status = FUNC2(ACPI_SIG_PCCT, 0, &tbl);
	if (FUNC0(status) || !tbl)
		return;

	for (i = 0; i < FUNC1(wa_info); i++) {
		if (!FUNC3(wa_info[i].oem_id, tbl->oem_id, ACPI_OEM_ID_SIZE) &&
		    !FUNC3(wa_info[i].oem_table_id, tbl->oem_table_id, ACPI_OEM_TABLE_ID_SIZE) &&
		    wa_info[i].oem_revision == tbl->oem_revision)
			apply_hisi_workaround = true;
	}
}