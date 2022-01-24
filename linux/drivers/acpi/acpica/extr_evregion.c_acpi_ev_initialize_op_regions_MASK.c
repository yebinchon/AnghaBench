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
typedef  size_t u32 ;
typedef  int /*<<< orphan*/  acpi_status ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ACPI_MTX_NAMESPACE ; 
 size_t ACPI_NUM_DEFAULT_SPACES ; 
 int /*<<< orphan*/  ACPI_REG_CONNECT ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * acpi_gbl_default_address_spaces ; 
 int /*<<< orphan*/  acpi_gbl_root_node ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ev_initialize_op_regions ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 

acpi_status FUNC7(void)
{
	acpi_status status;
	u32 i;

	FUNC1(ev_initialize_op_regions);

	status = FUNC4(ACPI_MTX_NAMESPACE);
	if (FUNC0(status)) {
		FUNC6(status);
	}

	/* Run the _REG methods for op_regions in each default address space */

	for (i = 0; i < ACPI_NUM_DEFAULT_SPACES; i++) {
		/*
		 * Make sure the installed handler is the DEFAULT handler. If not the
		 * default, the _REG methods will have already been run (when the
		 * handler was installed)
		 */
		if (FUNC3(acpi_gbl_root_node,
						acpi_gbl_default_address_spaces
						[i])) {
			FUNC2(acpi_gbl_root_node,
						    acpi_gbl_default_address_spaces
						    [i], ACPI_REG_CONNECT);
		}
	}

	(void)FUNC5(ACPI_MTX_NAMESPACE);
	FUNC6(status);
}