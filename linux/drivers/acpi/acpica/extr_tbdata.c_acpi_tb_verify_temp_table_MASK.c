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
typedef  int /*<<< orphan*/  u32 ;
struct TYPE_2__ {char* ascii; int /*<<< orphan*/  integer; } ;
struct acpi_table_desc {int /*<<< orphan*/  flags; int /*<<< orphan*/  address; TYPE_1__ signature; int /*<<< orphan*/  length; int /*<<< orphan*/  pointer; } ;
typedef  scalar_t__ acpi_status ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ACPI_TABLE_IS_VERIFIED ; 
 scalar_t__ AE_BAD_SIGNATURE ; 
 scalar_t__ AE_CTRL_TERMINATE ; 
 int /*<<< orphan*/  AE_INFO ; 
 scalar_t__ AE_NO_MEMORY ; 
 scalar_t__ AE_OK ; 
 scalar_t__ acpi_gbl_enable_table_validation ; 
 scalar_t__ FUNC6 (struct acpi_table_desc*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct acpi_table_desc*) ; 
 scalar_t__ FUNC8 (struct acpi_table_desc*) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC10 (char*) ; 
 int /*<<< orphan*/  FUNC11 (scalar_t__) ; 
 int /*<<< orphan*/  tb_verify_temp_table ; 

acpi_status
FUNC12(struct acpi_table_desc *table_desc,
			  char *signature, u32 *table_index)
{
	acpi_status status = AE_OK;

	FUNC5(tb_verify_temp_table);

	/* Validate the table */

	status = FUNC8(table_desc);
	if (FUNC3(status)) {
		FUNC11(AE_NO_MEMORY);
	}

	/* If a particular signature is expected (DSDT/FACS), it must match */

	if (signature &&
	    !FUNC1(&table_desc->signature, signature)) {
		FUNC0((AE_INFO,
				 "Invalid signature 0x%X for ACPI table, expected [%s]",
				 table_desc->signature.integer, signature));
		status = AE_BAD_SIGNATURE;
		goto invalidate_and_exit;
	}

	if (acpi_gbl_enable_table_validation) {

		/* Verify the checksum */

		status =
		    FUNC9(table_desc->pointer,
					    table_desc->length);
		if (FUNC3(status)) {
			FUNC2((AE_INFO, AE_NO_MEMORY,
					"%4.4s 0x%8.8X%8.8X"
					" Attempted table install failed",
					FUNC10(table_desc->
							      signature.
							      ascii) ?
					table_desc->signature.ascii : "????",
					FUNC4(table_desc->
							   address)));

			goto invalidate_and_exit;
		}

		/* Avoid duplications */

		if (table_index) {
			status =
			    FUNC6(table_desc, table_index);
			if (FUNC3(status)) {
				if (status != AE_CTRL_TERMINATE) {
					FUNC2((AE_INFO, status,
							"%4.4s 0x%8.8X%8.8X"
							" Table is already loaded",
							FUNC10
							(table_desc->signature.
							 ascii) ? table_desc->
							signature.
							ascii : "????",
							FUNC4
							(table_desc->address)));
				}

				goto invalidate_and_exit;
			}
		}

		table_desc->flags |= ACPI_TABLE_IS_VERIFIED;
	}

	FUNC11(status);

invalidate_and_exit:
	FUNC7(table_desc);
	FUNC11(status);
}