#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {scalar_t__ value; } ;
struct TYPE_7__ {int /*<<< orphan*/  pointer; } ;
struct TYPE_6__ {scalar_t__ type; } ;
union acpi_operand_object {TYPE_4__ integer; TYPE_3__ string; TYPE_2__ common; } ;
typedef  scalar_t__ u64 ;
typedef  int /*<<< orphan*/  u32 ;
struct acpi_walk_state {union acpi_operand_object* return_desc; TYPE_1__* arguments; } ;
struct acpi_interface_info {int flags; scalar_t__ value; } ;
typedef  int /*<<< orphan*/  acpi_status ;
typedef  scalar_t__ (* acpi_interface_handler ) (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ;
struct TYPE_5__ {union acpi_operand_object* object; } ;

/* Variables and functions */
 int /*<<< orphan*/  ACPI_DB_INFO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int ACPI_OSI_INVALID ; 
 int /*<<< orphan*/  ACPI_TYPE_INTEGER ; 
 scalar_t__ ACPI_TYPE_STRING ; 
 scalar_t__ ACPI_UINT64_MAX ; 
 int /*<<< orphan*/  ACPI_WAIT_FOREVER ; 
 int /*<<< orphan*/  AE_NO_MEMORY ; 
 int /*<<< orphan*/  AE_OK ; 
 int /*<<< orphan*/  AE_TYPE ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ acpi_gbl_osi_data ; 
 int /*<<< orphan*/  acpi_gbl_osi_mutex ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 union acpi_operand_object* FUNC6 (int /*<<< orphan*/ ) ; 
 struct acpi_interface_info* FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (union acpi_operand_object*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ut_osi_implementation ; 

acpi_status FUNC10(struct acpi_walk_state *walk_state)
{
	union acpi_operand_object *string_desc;
	union acpi_operand_object *return_desc;
	struct acpi_interface_info *interface_info;
	acpi_interface_handler interface_handler;
	acpi_status status;
	u64 return_value;

	FUNC2(ut_osi_implementation);

	/* Validate the string input argument (from the AML caller) */

	string_desc = walk_state->arguments[0].object;
	if (!string_desc || (string_desc->common.type != ACPI_TYPE_STRING)) {
		FUNC9(AE_TYPE);
	}

	/* Create a return object */

	return_desc = FUNC6(ACPI_TYPE_INTEGER);
	if (!return_desc) {
		FUNC9(AE_NO_MEMORY);
	}

	/* Default return value is 0, NOT SUPPORTED */

	return_value = 0;
	status = FUNC4(acpi_gbl_osi_mutex, ACPI_WAIT_FOREVER);
	if (FUNC1(status)) {
		FUNC8(return_desc);
		FUNC9(status);
	}

	/* Lookup the interface in the global _OSI list */

	interface_info = FUNC7(string_desc->string.pointer);
	if (interface_info && !(interface_info->flags & ACPI_OSI_INVALID)) {
		/*
		 * The interface is supported.
		 * Update the osi_data if necessary. We keep track of the latest
		 * version of Windows that has been requested by the BIOS.
		 */
		if (interface_info->value > acpi_gbl_osi_data) {
			acpi_gbl_osi_data = interface_info->value;
		}

		return_value = ACPI_UINT64_MAX;
	}

	FUNC5(acpi_gbl_osi_mutex);

	/*
	 * Invoke an optional _OSI interface handler. The host OS may wish
	 * to do some interface-specific handling. For example, warn about
	 * certain interfaces or override the true/false support value.
	 */
	interface_handler = acpi_gbl_interface_handler;
	if (interface_handler) {
		if (interface_handler
		    (string_desc->string.pointer, (u32)return_value)) {
			return_value = ACPI_UINT64_MAX;
		}
	}

	FUNC0((ACPI_DB_INFO,
			      "ACPI: BIOS _OSI(\"%s\") is %ssupported\n",
			      string_desc->string.pointer,
			      return_value == 0 ? "not " : ""));

	/* Complete the return object */

	return_desc->integer.value = return_value;
	walk_state->return_desc = return_desc;
	FUNC9(AE_OK);
}