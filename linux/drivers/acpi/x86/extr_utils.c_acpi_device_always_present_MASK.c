#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/  unique_id; } ;
struct acpi_device {TYPE_1__ pnp; } ;
struct TYPE_9__ {TYPE_3__* dmi_ids; int /*<<< orphan*/  cpu_ids; int /*<<< orphan*/  uid; int /*<<< orphan*/  hid; } ;
struct TYPE_8__ {TYPE_2__* matches; } ;
struct TYPE_7__ {scalar_t__ slot; } ;

/* Variables and functions */
 unsigned int FUNC0 (TYPE_4__*) ; 
 scalar_t__ FUNC1 (struct acpi_device*,int /*<<< orphan*/ ) ; 
 TYPE_4__* always_present_ids ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

bool FUNC5(struct acpi_device *adev)
{
	bool ret = false;
	unsigned int i;

	for (i = 0; i < FUNC0(always_present_ids); i++) {
		if (FUNC1(adev, always_present_ids[i].hid))
			continue;

		if (!adev->pnp.unique_id ||
		    FUNC3(adev->pnp.unique_id, always_present_ids[i].uid))
			continue;

		if (!FUNC4(always_present_ids[i].cpu_ids))
			continue;

		if (always_present_ids[i].dmi_ids[0].matches[0].slot &&
		    !FUNC2(always_present_ids[i].dmi_ids))
			continue;

		ret = true;
		break;
	}

	return ret;
}