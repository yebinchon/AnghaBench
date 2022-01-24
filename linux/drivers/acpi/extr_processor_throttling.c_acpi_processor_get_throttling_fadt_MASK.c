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
typedef  int u32 ;
struct TYPE_6__ {int state; int state_count; int duty_offset; TYPE_2__* states; int /*<<< orphan*/  address; } ;
struct TYPE_4__ {int /*<<< orphan*/  throttling; } ;
struct acpi_processor {TYPE_3__ throttling; TYPE_1__ flags; } ;
struct TYPE_5__ {int /*<<< orphan*/  performance; } ;

/* Variables and functions */
 int /*<<< orphan*/  ACPI_DB_INFO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int EINVAL ; 
 int ENODEV ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int,char*) ; 

__attribute__((used)) static int FUNC5(struct acpi_processor *pr)
{
	int state = 0;
	u32 value = 0;
	u32 duty_mask = 0;
	u32 duty_value = 0;

	if (!pr)
		return -EINVAL;

	if (!pr->flags.throttling)
		return -ENODEV;

	/*
	 * We don't care about error returns - we just try to mark
	 * these reserved so that nobody else is confused into thinking
	 * that this region might be unused..
	 *
	 * (In particular, allocating the IO range for Cardbus)
	 */
	FUNC4(pr->throttling.address, 6, "ACPI CPU throttle");

	pr->throttling.state = 0;

	duty_mask = pr->throttling.state_count - 1;

	duty_mask <<= pr->throttling.duty_offset;

	FUNC2();

	value = FUNC1(pr->throttling.address);

	/*
	 * Compute the current throttling state when throttling is enabled
	 * (bit 4 is on).
	 */
	if (value & 0x10) {
		duty_value = value & duty_mask;
		duty_value >>= pr->throttling.duty_offset;

		if (duty_value)
			state = pr->throttling.state_count - duty_value;
	}

	pr->throttling.state = state;

	FUNC3();

	FUNC0((ACPI_DB_INFO,
			  "Throttling state is T%d (%d%% throttling applied)\n",
			  state, pr->throttling.states[state].performance));

	return 0;
}