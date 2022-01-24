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
typedef  union acpi_parse_object {int dummy; } acpi_parse_object ;
struct acpi_walk_state {int dummy; } ;
typedef  scalar_t__ acpi_status ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 scalar_t__ AE_CTRL_TERMINATE ; 
 scalar_t__ AE_CTRL_TRUE ; 
 int /*<<< orphan*/  AE_INFO ; 
 int /*<<< orphan*/  TRUE ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,struct acpi_walk_state*,union acpi_parse_object*) ; 
 int /*<<< orphan*/  acpi_gbl_db_line_buf ; 
 int /*<<< orphan*/  acpi_gbl_method_executing ; 
 scalar_t__ FUNC3 () ; 
 scalar_t__ FUNC4 () ; 

__attribute__((used)) static acpi_status
FUNC5(struct acpi_walk_state *walk_state,
		      union acpi_parse_object *op)
{
	acpi_status status;

	/* TBD: [Investigate] are there namespace locking issues here? */

	/* acpi_ut_release_mutex (ACPI_MTX_NAMESPACE); */

	/* Go into the command loop and await next user command */

	acpi_gbl_method_executing = TRUE;
	status = AE_CTRL_TRUE;

	while (status == AE_CTRL_TRUE) {

		/* Notify the completion of the command */

		status = FUNC3();
		if (FUNC1(status)) {
			goto error_exit;
		}

		/* Wait the readiness of the command */

		status = FUNC4();
		if (FUNC1(status)) {
			goto error_exit;
		}

		status =
		    FUNC2(acpi_gbl_db_line_buf, walk_state,
					     op);
	}

	/* acpi_ut_acquire_mutex (ACPI_MTX_NAMESPACE); */

error_exit:
	if (FUNC1(status) && status != AE_CTRL_TERMINATE) {
		FUNC0((AE_INFO, status,
				"While parsing/handling command line"));
	}
	return (status);
}