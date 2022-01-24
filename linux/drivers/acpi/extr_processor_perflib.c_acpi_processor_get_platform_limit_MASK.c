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
struct acpi_processor {int performance_platform_limit; int /*<<< orphan*/  id; TYPE_2__* performance; int /*<<< orphan*/  perflib_req; int /*<<< orphan*/  handle; } ;
typedef  scalar_t__ acpi_status ;
struct TYPE_4__ {unsigned long long state_count; TYPE_1__* states; } ;
struct TYPE_3__ {int core_frequency; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  AE_INFO ; 
 scalar_t__ AE_NOT_FOUND ; 
 int EINVAL ; 
 int ENODEV ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *,unsigned long long*) ; 
 int acpi_processor_ppc_in_use ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC5 (char*,int /*<<< orphan*/ ,int,char*) ; 
 int /*<<< orphan*/  FUNC6 (char*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC7 (int) ; 

__attribute__((used)) static int FUNC8(struct acpi_processor *pr)
{
	acpi_status status = 0;
	unsigned long long ppc = 0;
	int ret;

	if (!pr)
		return -EINVAL;

	/*
	 * _PPC indicates the maximum state currently supported by the platform
	 * (e.g. 0 = states 0..n; 1 = states 1..n; etc.
	 */
	status = FUNC2(pr->handle, "_PPC", NULL, &ppc);

	if (status != AE_NOT_FOUND)
		acpi_processor_ppc_in_use = true;

	if (FUNC1(status) && status != AE_NOT_FOUND) {
		FUNC0((AE_INFO, status, "Evaluating _PPC"));
		return -ENODEV;
	}

	FUNC5("CPU %d: _PPC is %d - frequency %s limited\n", pr->id,
		       (int)ppc, ppc ? "" : "not");

	pr->performance_platform_limit = (int)ppc;

	if (ppc >= pr->performance->state_count ||
	    FUNC7(!FUNC3(&pr->perflib_req)))
		return 0;

	ret = FUNC4(&pr->perflib_req,
			pr->performance->states[ppc].core_frequency * 1000);
	if (ret < 0) {
		FUNC6("Failed to update perflib freq constraint: CPU%d (%d)\n",
			pr->id, ret);
	}

	return 0;
}