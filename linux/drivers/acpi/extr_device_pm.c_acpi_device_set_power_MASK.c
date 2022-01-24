#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_8__ ;
typedef  struct TYPE_15__   TYPE_7__ ;
typedef  struct TYPE_14__   TYPE_6__ ;
typedef  struct TYPE_13__   TYPE_5__ ;
typedef  struct TYPE_12__   TYPE_4__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_16__ {int /*<<< orphan*/  bus_id; } ;
struct TYPE_14__ {int /*<<< orphan*/  explicit_get; scalar_t__ power_resources; int /*<<< orphan*/  ignore_parent; } ;
struct TYPE_15__ {int state; TYPE_6__ flags; TYPE_3__* states; } ;
struct TYPE_9__ {int /*<<< orphan*/  power_manageable; } ;
struct acpi_device {TYPE_8__ pnp; TYPE_7__ power; int /*<<< orphan*/  dev; TYPE_5__* parent; int /*<<< orphan*/  handle; TYPE_1__ flags; } ;
struct TYPE_12__ {int state; } ;
struct TYPE_13__ {TYPE_4__ power; } ;
struct TYPE_10__ {int /*<<< orphan*/  valid; } ;
struct TYPE_11__ {TYPE_2__ flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  ACPI_DB_INFO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int ACPI_STATE_D0 ; 
 int ACPI_STATE_D3_COLD ; 
 int ACPI_STATE_D3_HOT ; 
 int EINVAL ; 
 int ENODEV ; 
 int FUNC1 (struct acpi_device*,int*) ; 
 int FUNC2 (struct acpi_device*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int FUNC5 (struct acpi_device*,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,...) ; 

int FUNC7(struct acpi_device *device, int state)
{
	int target_state = state;
	int result = 0;

	if (!device || !device->flags.power_manageable
	    || (state < ACPI_STATE_D0) || (state > ACPI_STATE_D3_COLD))
		return -EINVAL;

	FUNC3(device->handle, "Power state change: %s -> %s\n",
			  FUNC4(device->power.state),
			  FUNC4(state));

	/* Make sure this is a valid target state */

	/* There is a special case for D0 addressed below. */
	if (state > ACPI_STATE_D0 && state == device->power.state) {
		FUNC0((ACPI_DB_INFO, "Device [%s] already in %s\n",
				  device->pnp.bus_id,
				  FUNC4(state)));
		return 0;
	}

	if (state == ACPI_STATE_D3_COLD) {
		/*
		 * For transitions to D3cold we need to execute _PS3 and then
		 * possibly drop references to the power resources in use.
		 */
		state = ACPI_STATE_D3_HOT;
		/* If _PR3 is not available, use D3hot as the target state. */
		if (!device->power.states[ACPI_STATE_D3_COLD].flags.valid)
			target_state = state;
	} else if (!device->power.states[state].flags.valid) {
		FUNC6(&device->dev, "Power state %s not supported\n",
			 FUNC4(state));
		return -ENODEV;
	}

	if (!device->power.flags.ignore_parent &&
	    device->parent && (state < device->parent->power.state)) {
		FUNC6(&device->dev,
			 "Cannot transition to power state %s for parent in %s\n",
			 FUNC4(state),
			 FUNC4(device->parent->power.state));
		return -ENODEV;
	}

	/*
	 * Transition Power
	 * ----------------
	 * In accordance with ACPI 6, _PSx is executed before manipulating power
	 * resources, unless the target state is D0, in which case _PS0 is
	 * supposed to be executed after turning the power resources on.
	 */
	if (state > ACPI_STATE_D0) {
		/*
		 * According to ACPI 6, devices cannot go from lower-power
		 * (deeper) states to higher-power (shallower) states.
		 */
		if (state < device->power.state) {
			FUNC6(&device->dev, "Cannot transition from %s to %s\n",
				 FUNC4(device->power.state),
				 FUNC4(state));
			return -ENODEV;
		}

		/*
		 * If the device goes from D3hot to D3cold, _PS3 has been
		 * evaluated for it already, so skip it in that case.
		 */
		if (device->power.state < ACPI_STATE_D3_HOT) {
			result = FUNC2(device, state);
			if (result)
				goto end;
		}

		if (device->power.flags.power_resources)
			result = FUNC5(device, target_state);
	} else {
		int cur_state = device->power.state;

		if (device->power.flags.power_resources) {
			result = FUNC5(device, ACPI_STATE_D0);
			if (result)
				goto end;
		}

		if (cur_state == ACPI_STATE_D0) {
			int psc;

			/* Nothing to do here if _PSC is not present. */
			if (!device->power.flags.explicit_get)
				return 0;

			/*
			 * The power state of the device was set to D0 last
			 * time, but that might have happened before a
			 * system-wide transition involving the platform
			 * firmware, so it may be necessary to evaluate _PS0
			 * for the device here.  However, use extra care here
			 * and evaluate _PSC to check the device's current power
			 * state, and only invoke _PS0 if the evaluation of _PSC
			 * is successful and it returns a power state different
			 * from D0.
			 */
			result = FUNC1(device, &psc);
			if (result || psc == ACPI_STATE_D0)
				return 0;
		}

		result = FUNC2(device, ACPI_STATE_D0);
	}

 end:
	if (result) {
		FUNC6(&device->dev, "Failed to change power state to %s\n",
			 FUNC4(state));
	} else {
		device->power.state = target_state;
		FUNC0((ACPI_DB_INFO,
				  "Device [%s] transitioned to %s\n",
				  device->pnp.bus_id,
				  FUNC4(state)));
	}

	return result;
}