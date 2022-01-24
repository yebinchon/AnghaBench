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
typedef  scalar_t__ u8 ;
struct acpi_ec_query {int /*<<< orphan*/  work; int /*<<< orphan*/  handler; int /*<<< orphan*/  transaction; } ;
struct acpi_ec {int dummy; } ;

/* Variables and functions */
 int EBUSY ; 
 int ENODATA ; 
 int ENOMEM ; 
 struct acpi_ec_query* FUNC0 (scalar_t__*) ; 
 int /*<<< orphan*/  FUNC1 (struct acpi_ec_query*) ; 
 int /*<<< orphan*/  FUNC2 (struct acpi_ec*,scalar_t__) ; 
 int FUNC3 (struct acpi_ec*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (char*,scalar_t__) ; 
 int /*<<< orphan*/  ec_query_wq ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC6(struct acpi_ec *ec, u8 *data)
{
	u8 value = 0;
	int result;
	struct acpi_ec_query *q;

	q = FUNC0(&value);
	if (!q)
		return -ENOMEM;

	/*
	 * Query the EC to find out which _Qxx method we need to evaluate.
	 * Note that successful completion of the query causes the ACPI_EC_SCI
	 * bit to be cleared (and thus clearing the interrupt source).
	 */
	result = FUNC3(ec, &q->transaction);
	if (!value)
		result = -ENODATA;
	if (result)
		goto err_exit;

	q->handler = FUNC2(ec, value);
	if (!q->handler) {
		result = -ENODATA;
		goto err_exit;
	}

	/*
	 * It is reported that _Qxx are evaluated in a parallel way on
	 * Windows:
	 * https://bugzilla.kernel.org/show_bug.cgi?id=94411
	 *
	 * Put this log entry before schedule_work() in order to make
	 * it appearing before any other log entries occurred during the
	 * work queue execution.
	 */
	FUNC4("Query(0x%02x) scheduled", value);
	if (!FUNC5(ec_query_wq, &q->work)) {
		FUNC4("Query(0x%02x) overlapped", value);
		result = -EBUSY;
	}

err_exit:
	if (result)
		FUNC1(q);
	if (data)
		*data = value;
	return result;
}