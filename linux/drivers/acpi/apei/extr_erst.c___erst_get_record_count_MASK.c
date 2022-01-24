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
struct apei_exec_context {int dummy; } ;
typedef  int ssize_t ;

/* Variables and functions */
 int /*<<< orphan*/  ACPI_ERST_GET_RECORD_COUNT ; 
 int FUNC0 (struct apei_exec_context*) ; 
 int FUNC1 (struct apei_exec_context*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct apei_exec_context*) ; 

__attribute__((used)) static ssize_t FUNC3(void)
{
	struct apei_exec_context ctx;
	int rc;

	FUNC2(&ctx);
	rc = FUNC1(&ctx, ACPI_ERST_GET_RECORD_COUNT);
	if (rc)
		return rc;
	return FUNC0(&ctx);
}