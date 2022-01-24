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
typedef  int /*<<< orphan*/  u8 ;
typedef  int /*<<< orphan*/  u32 ;
struct TYPE_2__ {int /*<<< orphan*/  ascii; } ;
struct acpi_table_desc {int /*<<< orphan*/  pointer; TYPE_1__ signature; } ;
typedef  scalar_t__ acpi_status ;
typedef  int /*<<< orphan*/  acpi_physical_address ;

/* Variables and functions */
 scalar_t__ FUNC0 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int /*<<< orphan*/  ACPI_MTX_TABLES ; 
 int /*<<< orphan*/  ACPI_SIG_SSDT ; 
 int /*<<< orphan*/  ACPI_TABLE_EVENT_INSTALL ; 
 scalar_t__ AE_CTRL_TERMINATE ; 
 int /*<<< orphan*/  AE_INFO ; 
 scalar_t__ AE_OK ; 
 scalar_t__ acpi_gbl_disable_ssdt_table_install ; 
 scalar_t__ FUNC6 (struct acpi_table_desc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct acpi_table_desc*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct acpi_table_desc*) ; 
 int /*<<< orphan*/  FUNC10 (struct acpi_table_desc*) ; 
 scalar_t__ FUNC11 (struct acpi_table_desc*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (scalar_t__) ; 
 int /*<<< orphan*/  tb_install_standard_table ; 

acpi_status
FUNC15(acpi_physical_address address,
			       u8 flags,
			       u8 reload, u8 override, u32 *table_index)
{
	u32 i;
	acpi_status status = AE_OK;
	struct acpi_table_desc new_table_desc;

	FUNC4(tb_install_standard_table);

	/* Acquire a temporary table descriptor for validation */

	status = FUNC6(&new_table_desc, address, flags);
	if (FUNC2(status)) {
		FUNC1((AE_INFO,
			    "Could not acquire table length at %8.8X%8.8X",
			    FUNC3(address)));
		FUNC14(status);
	}

	/*
	 * Optionally do not load any SSDTs from the RSDT/XSDT. This can
	 * be useful for debugging ACPI problems on some machines.
	 */
	if (!reload &&
	    acpi_gbl_disable_ssdt_table_install &&
	    FUNC0(&new_table_desc.signature, ACPI_SIG_SSDT)) {
		FUNC5(("Ignoring installation of %4.4s at %8.8X%8.8X",
			   new_table_desc.signature.ascii,
			   FUNC3(address)));
		goto release_and_exit;
	}

	/* Acquire the table lock */

	(void)FUNC12(ACPI_MTX_TABLES);

	/* Validate and verify a table before installation */

	status = FUNC11(&new_table_desc, NULL, &i);
	if (FUNC2(status)) {
		if (status == AE_CTRL_TERMINATE) {
			/*
			 * Table was unloaded, allow it to be reloaded.
			 * As we are going to return AE_OK to the caller, we should
			 * take the responsibility of freeing the input descriptor.
			 * Refill the input descriptor to ensure
			 * acpi_tb_install_table_with_override() can be called again to
			 * indicate the re-installation.
			 */
			FUNC10(&new_table_desc);
			(void)FUNC13(ACPI_MTX_TABLES);
			*table_index = i;
			FUNC14(AE_OK);
		}
		goto unlock_and_exit;
	}

	/* Add the table to the global root table list */

	FUNC7(&new_table_desc, override,
					    table_index);

	/* Invoke table handler */

	(void)FUNC13(ACPI_MTX_TABLES);
	FUNC8(ACPI_TABLE_EVENT_INSTALL, new_table_desc.pointer);
	(void)FUNC12(ACPI_MTX_TABLES);

unlock_and_exit:

	/* Release the table lock */

	(void)FUNC13(ACPI_MTX_TABLES);

release_and_exit:

	/* Release the temporary table descriptor */

	FUNC9(&new_table_desc);
	FUNC14(status);
}