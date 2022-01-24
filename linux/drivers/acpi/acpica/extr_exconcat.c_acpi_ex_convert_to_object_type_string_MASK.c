#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  pointer; } ;
struct TYPE_3__ {int /*<<< orphan*/  type; } ;
union acpi_operand_object {TYPE_2__ string; TYPE_1__ common; } ;
typedef  int /*<<< orphan*/  acpi_status ;
typedef  scalar_t__ acpi_size ;

/* Variables and functions */
 int /*<<< orphan*/  AE_NO_MEMORY ; 
 int /*<<< orphan*/  AE_OK ; 
 union acpi_operand_object* FUNC0 (scalar_t__) ; 
 char* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC4 (char const*) ; 

__attribute__((used)) static acpi_status
FUNC5(union acpi_operand_object *obj_desc,
				      union acpi_operand_object **result_desc)
{
	union acpi_operand_object *return_desc;
	const char *type_string;

	type_string = FUNC1(obj_desc->common.type);

	return_desc = FUNC0(((acpi_size)FUNC4(type_string) + 9));	/* 9 For "[ Object]" */
	if (!return_desc) {
		return (AE_NO_MEMORY);
	}

	FUNC3(return_desc->string.pointer, "[");
	FUNC2(return_desc->string.pointer, type_string);
	FUNC2(return_desc->string.pointer, " Object]");

	*result_desc = return_desc;
	return (AE_OK);
}