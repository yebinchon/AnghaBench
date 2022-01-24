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
typedef  int /*<<< orphan*/  u64 ;
struct apei_exec_context {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  ACPI_ERST_GET_RECORD_ID ; 
 int /*<<< orphan*/  FUNC0 (struct apei_exec_context*) ; 
 int FUNC1 (struct apei_exec_context*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct apei_exec_context*) ; 

__attribute__((used)) static int FUNC3(u64 *record_id)
{
	struct apei_exec_context ctx;
	int rc;

	FUNC2(&ctx);
	rc = FUNC1(&ctx, ACPI_ERST_GET_RECORD_ID);
	if (rc)
		return rc;
	*record_id = FUNC0(&ctx);

	return 0;
}