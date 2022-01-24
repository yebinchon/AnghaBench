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
typedef  scalar_t__ u64 ;
struct apei_exec_context {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  ACPI_ERST_BEGIN_CLEAR ; 
 int /*<<< orphan*/  ACPI_ERST_CHECK_BUSY_STATUS ; 
 int /*<<< orphan*/  ACPI_ERST_END ; 
 int /*<<< orphan*/  ACPI_ERST_EXECUTE_OPERATION ; 
 int /*<<< orphan*/  ACPI_ERST_GET_COMMAND_STATUS ; 
 int /*<<< orphan*/  ACPI_ERST_SET_RECORD_ID ; 
 int EIO ; 
 scalar_t__ FIRMWARE_TIMEOUT ; 
 int /*<<< orphan*/  SPIN_UNIT ; 
 scalar_t__ FUNC0 (struct apei_exec_context*) ; 
 int /*<<< orphan*/  FUNC1 (struct apei_exec_context*,scalar_t__) ; 
 int FUNC2 (struct apei_exec_context*,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct apei_exec_context*,int /*<<< orphan*/ ) ; 
 int FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (struct apei_exec_context*) ; 
 scalar_t__ FUNC6 (scalar_t__*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC7(u64 record_id)
{
	struct apei_exec_context ctx;
	u64 timeout = FIRMWARE_TIMEOUT;
	u64 val;
	int rc;

	FUNC5(&ctx);
	rc = FUNC3(&ctx, ACPI_ERST_BEGIN_CLEAR);
	if (rc)
		return rc;
	FUNC1(&ctx, record_id);
	rc = FUNC2(&ctx, ACPI_ERST_SET_RECORD_ID);
	if (rc)
		return rc;
	rc = FUNC2(&ctx, ACPI_ERST_EXECUTE_OPERATION);
	if (rc)
		return rc;
	for (;;) {
		rc = FUNC2(&ctx, ACPI_ERST_CHECK_BUSY_STATUS);
		if (rc)
			return rc;
		val = FUNC0(&ctx);
		if (!val)
			break;
		if (FUNC6(&timeout, SPIN_UNIT))
			return -EIO;
	}
	rc = FUNC2(&ctx, ACPI_ERST_GET_COMMAND_STATUS);
	if (rc)
		return rc;
	val = FUNC0(&ctx);
	rc = FUNC3(&ctx, ACPI_ERST_END);
	if (rc)
		return rc;

	return FUNC4(val);
}