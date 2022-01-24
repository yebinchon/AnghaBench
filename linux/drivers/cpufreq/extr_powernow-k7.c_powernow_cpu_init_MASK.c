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
struct TYPE_3__ {size_t CFID; int /*<<< orphan*/  SVID; int /*<<< orphan*/  MFID; } ;
union msr_fidvidstatus {TYPE_1__ bits; int /*<<< orphan*/  val; } ;
struct TYPE_4__ {int /*<<< orphan*/  transition_latency; } ;
struct cpufreq_policy {scalar_t__ cpu; int /*<<< orphan*/  freq_table; TYPE_2__ cpuinfo; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENODEV ; 
 int /*<<< orphan*/  MSR_K7_FID_VID_STATUS ; 
 scalar_t__ acpi_force ; 
 int cpu_khz ; 
 int /*<<< orphan*/  FUNC0 (unsigned long,int,scalar_t__) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int* fid_codes ; 
 scalar_t__ FUNC2 () ; 
 int fsb ; 
 scalar_t__ latency ; 
 int maximum_speed ; 
 int minimum_speed ; 
 int FUNC3 () ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  powernow_dmi_table ; 
 int /*<<< orphan*/  powernow_table ; 
 int /*<<< orphan*/  FUNC5 (char*,int) ; 
 int /*<<< orphan*/  FUNC6 (char*,...) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 () ; 

__attribute__((used)) static int FUNC10(struct cpufreq_policy *policy)
{
	union msr_fidvidstatus fidvidstatus;
	int result;

	if (policy->cpu != 0)
		return -ENODEV;

	FUNC8(MSR_K7_FID_VID_STATUS, fidvidstatus.val);

	FUNC9();

	fsb = (10 * cpu_khz) / fid_codes[fidvidstatus.bits.CFID];
	if (!fsb) {
		FUNC7("can not determine bus frequency\n");
		return -EINVAL;
	}
	FUNC5("FSB: %3dMHz\n", fsb/1000);

	if (FUNC1(powernow_dmi_table) || acpi_force) {
		FUNC6("PSB/PST known to be broken - trying ACPI instead\n");
		result = FUNC3();
	} else {
		result = FUNC4(fidvidstatus.bits.MFID,
				fidvidstatus.bits.SVID);
		if (result) {
			FUNC6("Trying ACPI perflib\n");
			maximum_speed = 0;
			minimum_speed = -1;
			latency = 0;
			result = FUNC3();
			if (result) {
				FUNC6("ACPI and legacy methods failed\n");
			}
		} else {
			/* SGTC use the bus clock as timer */
			latency = FUNC2();
			FUNC6("SGTC: %d\n", latency);
		}
	}

	if (result)
		return result;

	FUNC6("Minimum speed %d MHz - Maximum speed %d MHz\n",
		minimum_speed/1000, maximum_speed/1000);

	policy->cpuinfo.transition_latency =
		FUNC0(2000000UL, fsb, latency);
	policy->freq_table = powernow_table;

	return 0;
}