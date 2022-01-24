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
struct TYPE_4__ {int /*<<< orphan*/  field_flags; } ;
struct TYPE_3__ {int /*<<< orphan*/  bit_length; int /*<<< orphan*/  pin_number_index; } ;
union acpi_operand_object {TYPE_2__ common_field; TYPE_1__ field; } ;
typedef  int /*<<< orphan*/  u64 ;
typedef  int /*<<< orphan*/  acpi_status ;

/* Variables and functions */
 int /*<<< orphan*/  ACPI_DB_BFIELD ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,union acpi_operand_object*) ; 
 int /*<<< orphan*/  ACPI_READ ; 
 int /*<<< orphan*/  FUNC2 (union acpi_operand_object*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ex_read_gpio ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 

acpi_status FUNC6(union acpi_operand_object *obj_desc, void *buffer)
{
	acpi_status status;

	FUNC1(ex_read_gpio, obj_desc);

	/*
	 * For GPIO (general_purpose_io), the Address will be the bit offset
	 * from the previous Connection() operator, making it effectively a
	 * pin number index. The bit_length is the length of the field, which
	 * is thus the number of pins.
	 */
	FUNC0((ACPI_DB_BFIELD,
			  "GPIO FieldRead [FROM]:  Pin %u Bits %u\n",
			  obj_desc->field.pin_number_index,
			  obj_desc->field.bit_length));

	/* Lock entire transaction if requested */

	FUNC3(obj_desc->common_field.field_flags);

	/* Perform the read */

	status = FUNC2(obj_desc, 0, (u64 *)buffer, ACPI_READ);

	FUNC4(obj_desc->common_field.field_flags);
	FUNC5(status);
}