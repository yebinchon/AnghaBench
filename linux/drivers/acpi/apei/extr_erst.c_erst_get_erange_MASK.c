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
struct erst_erange {void* attr; void* size; void* base; } ;
struct apei_exec_context {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  ACPI_ERST_GET_ERROR_ATTRIBUTES ; 
 int /*<<< orphan*/  ACPI_ERST_GET_ERROR_LENGTH ; 
 int /*<<< orphan*/  ACPI_ERST_GET_ERROR_RANGE ; 
 void* FUNC0 (struct apei_exec_context*) ; 
 int FUNC1 (struct apei_exec_context*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct apei_exec_context*) ; 

__attribute__((used)) static int FUNC3(struct erst_erange *range)
{
	struct apei_exec_context ctx;
	int rc;

	FUNC2(&ctx);
	rc = FUNC1(&ctx, ACPI_ERST_GET_ERROR_RANGE);
	if (rc)
		return rc;
	range->base = FUNC0(&ctx);
	rc = FUNC1(&ctx, ACPI_ERST_GET_ERROR_LENGTH);
	if (rc)
		return rc;
	range->size = FUNC0(&ctx);
	rc = FUNC1(&ctx, ACPI_ERST_GET_ERROR_ATTRIBUTES);
	if (rc)
		return rc;
	range->attr = FUNC0(&ctx);

	return 0;
}