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
struct TYPE_2__ {char* pointer; scalar_t__ length; } ;
union acpi_operand_object {TYPE_1__ string; } ;
typedef  scalar_t__ u32 ;
typedef  scalar_t__ acpi_size ;

/* Variables and functions */
 char* FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  ACPI_TYPE_STRING ; 
 int /*<<< orphan*/  AE_INFO ; 
 union acpi_operand_object* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (union acpi_operand_object*) ; 
 int /*<<< orphan*/  FUNC5 (union acpi_operand_object*) ; 
 int /*<<< orphan*/  ut_create_string_object ; 

union acpi_operand_object *FUNC6(acpi_size string_size)
{
	union acpi_operand_object *string_desc;
	char *string;

	FUNC2(ut_create_string_object, string_size);

	/* Create a new String object */

	string_desc = FUNC3(ACPI_TYPE_STRING);
	if (!string_desc) {
		FUNC5(NULL);
	}

	/*
	 * Allocate the actual string buffer -- (Size + 1) for NULL terminator.
	 * NOTE: Zero-length strings are NULL terminated
	 */
	string = FUNC0(string_size + 1);
	if (!string) {
		FUNC1((AE_INFO, "Could not allocate size %u",
			    (u32)string_size));

		FUNC4(string_desc);
		FUNC5(NULL);
	}

	/* Complete string object initialization */

	string_desc->string.pointer = string;
	string_desc->string.length = (u32) string_size;

	/* Return the new string descriptor */

	FUNC5(string_desc);
}