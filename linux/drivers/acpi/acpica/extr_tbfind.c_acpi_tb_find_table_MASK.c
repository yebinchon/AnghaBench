#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  size_t u32 ;
struct acpi_table_header {int /*<<< orphan*/  signature; int /*<<< orphan*/  oem_table_id; int /*<<< orphan*/  oem_id; } ;
typedef  int /*<<< orphan*/  acpi_status ;
struct TYPE_6__ {size_t current_table_count; TYPE_2__* tables; } ;
struct TYPE_5__ {TYPE_1__* pointer; int /*<<< orphan*/  signature; } ;
struct TYPE_4__ {int /*<<< orphan*/ * oem_table_id; int /*<<< orphan*/ * oem_id; int /*<<< orphan*/ * signature; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  ACPI_DB_TABLES ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ACPI_MTX_TABLES ; 
 scalar_t__ ACPI_NAMESEG_SIZE ; 
 scalar_t__ ACPI_OEM_ID_SIZE ; 
 scalar_t__ ACPI_OEM_TABLE_ID_SIZE ; 
 int /*<<< orphan*/  AE_AML_STRING_LIMIT ; 
 int /*<<< orphan*/  AE_BAD_SIGNATURE ; 
 int /*<<< orphan*/  AE_NOT_FOUND ; 
 int /*<<< orphan*/  AE_OK ; 
 TYPE_3__ acpi_gbl_root_table_list ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC9 (struct acpi_table_header*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC11 (char*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,char*,scalar_t__) ; 
 int /*<<< orphan*/  tb_find_table ; 

acpi_status
FUNC13(char *signature,
		   char *oem_id, char *oem_table_id, u32 *table_index)
{
	acpi_status status = AE_OK;
	struct acpi_table_header header;
	u32 i;

	FUNC3(tb_find_table);

	/* Validate the input table signature */

	if (!FUNC7(signature)) {
		FUNC10(AE_BAD_SIGNATURE);
	}

	/* Don't allow the OEM strings to be too long */

	if ((FUNC11(oem_id) > ACPI_OEM_ID_SIZE) ||
	    (FUNC11(oem_table_id) > ACPI_OEM_TABLE_ID_SIZE)) {
		FUNC10(AE_AML_STRING_LIMIT);
	}

	/* Normalize the input strings */

	FUNC9(&header, 0, sizeof(struct acpi_table_header));
	FUNC0(header.signature, signature);
	FUNC12(header.oem_id, oem_id, ACPI_OEM_ID_SIZE);
	FUNC12(header.oem_table_id, oem_table_id, ACPI_OEM_TABLE_ID_SIZE);

	/* Search for the table */

	(void)FUNC5(ACPI_MTX_TABLES);
	for (i = 0; i < acpi_gbl_root_table_list.current_table_count; ++i) {
		if (FUNC8(&(acpi_gbl_root_table_list.tables[i].signature),
			   header.signature, ACPI_NAMESEG_SIZE)) {

			/* Not the requested table */

			continue;
		}

		/* Table with matching signature has been found */

		if (!acpi_gbl_root_table_list.tables[i].pointer) {

			/* Table is not currently mapped, map it */

			status =
			    FUNC4(&acpi_gbl_root_table_list.
						   tables[i]);
			if (FUNC2(status)) {
				goto unlock_and_exit;
			}

			if (!acpi_gbl_root_table_list.tables[i].pointer) {
				continue;
			}
		}

		/* Check for table match on all IDs */

		if (!FUNC8
		    (acpi_gbl_root_table_list.tables[i].pointer->signature,
		     header.signature, ACPI_NAMESEG_SIZE) && (!oem_id[0]
							      ||
							      !FUNC8
							      (acpi_gbl_root_table_list.
							       tables[i].
							       pointer->oem_id,
							       header.oem_id,
							       ACPI_OEM_ID_SIZE))
		    && (!oem_table_id[0]
			|| !FUNC8(acpi_gbl_root_table_list.tables[i].pointer->
				   oem_table_id, header.oem_table_id,
				   ACPI_OEM_TABLE_ID_SIZE))) {
			*table_index = i;

			FUNC1((ACPI_DB_TABLES,
					  "Found table [%4.4s]\n",
					  header.signature));
			goto unlock_and_exit;
		}
	}
	status = AE_NOT_FOUND;

unlock_and_exit:
	(void)FUNC6(ACPI_MTX_TABLES);
	FUNC10(status);
}