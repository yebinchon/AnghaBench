#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int has_lpi; int power; } ;
struct TYPE_5__ {int count; TYPE_1__* lpi_states; } ;
struct acpi_processor {TYPE_3__ flags; TYPE_2__ power; int /*<<< orphan*/  handle; } ;
struct acpi_lpi_states_array {int dummy; } ;
struct acpi_device {int dummy; } ;
typedef  int /*<<< orphan*/  acpi_status ;
typedef  int /*<<< orphan*/  acpi_handle ;
struct TYPE_4__ {int index; } ;

/* Variables and functions */
 int /*<<< orphan*/  ACPI_PROCESSOR_CONTAINER_HID ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int EINVAL ; 
 int EOPNOTSUPP ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct acpi_device**) ; 
 int /*<<< orphan*/  FUNC2 (struct acpi_device*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*) ; 
 int FUNC5 (int /*<<< orphan*/ ,struct acpi_lpi_states_array*) ; 
 int flat_state_cnt ; 
 int /*<<< orphan*/  FUNC6 (struct acpi_processor*,struct acpi_lpi_states_array*,struct acpi_lpi_states_array*) ; 
 int /*<<< orphan*/  osc_pc_lpi_support_confirmed ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC8(struct acpi_processor *pr)
{
	int ret, i;
	acpi_status status;
	acpi_handle handle = pr->handle, pr_ahandle;
	struct acpi_device *d = NULL;
	struct acpi_lpi_states_array info[2], *tmp, *prev, *curr;

	if (!osc_pc_lpi_support_confirmed)
		return -EOPNOTSUPP;

	if (!FUNC4(handle, "_LPI"))
		return -EINVAL;

	flat_state_cnt = 0;
	prev = &info[0];
	curr = &info[1];
	handle = pr->handle;
	ret = FUNC5(handle, prev);
	if (ret)
		return ret;
	FUNC6(pr, prev, NULL);

	status = FUNC3(handle, &pr_ahandle);
	while (FUNC0(status)) {
		FUNC1(pr_ahandle, &d);
		handle = pr_ahandle;

		if (FUNC7(FUNC2(d), ACPI_PROCESSOR_CONTAINER_HID))
			break;

		/* can be optional ? */
		if (!FUNC4(handle, "_LPI"))
			break;

		ret = FUNC5(handle, curr);
		if (ret)
			break;

		/* flatten all the LPI states in this level of hierarchy */
		FUNC6(pr, curr, prev);

		tmp = prev, prev = curr, curr = tmp;

		status = FUNC3(handle, &pr_ahandle);
	}

	pr->power.count = flat_state_cnt;
	/* reset the index after flattening */
	for (i = 0; i < pr->power.count; i++)
		pr->power.lpi_states[i].index = i;

	/* Tell driver that _LPI is supported. */
	pr->flags.has_lpi = 1;
	pr->flags.power = 1;

	return 0;
}