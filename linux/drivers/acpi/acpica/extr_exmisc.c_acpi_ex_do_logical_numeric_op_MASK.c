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
typedef  int /*<<< orphan*/  u8 ;
typedef  int /*<<< orphan*/  u64 ;
typedef  int u16 ;
typedef  int /*<<< orphan*/  acpi_status ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  AE_AML_INTERNAL ; 
 int /*<<< orphan*/  AE_INFO ; 
 int /*<<< orphan*/  AE_OK ; 
#define  AML_LOGICAL_AND_OP 129 
#define  AML_LOGICAL_OR_OP 128 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  ex_do_logical_numeric_op ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

acpi_status
FUNC3(u16 opcode,
			      u64 integer0, u64 integer1, u8 *logical_result)
{
	acpi_status status = AE_OK;
	u8 local_result = FALSE;

	FUNC1(ex_do_logical_numeric_op);

	switch (opcode) {
	case AML_LOGICAL_AND_OP:	/* LAnd (Integer0, Integer1) */

		if (integer0 && integer1) {
			local_result = TRUE;
		}
		break;

	case AML_LOGICAL_OR_OP:	/* LOr (Integer0, Integer1) */

		if (integer0 || integer1) {
			local_result = TRUE;
		}
		break;

	default:

		FUNC0((AE_INFO,
			    "Invalid numeric logical opcode: %X", opcode));
		status = AE_AML_INTERNAL;
		break;
	}

	/* Return the logical result and status */

	*logical_result = local_result;
	FUNC2(status);
}