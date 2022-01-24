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

/* Variables and functions */
 int APIC_DM_FIXED ; 
 int /*<<< orphan*/  APIC_LVTCMCI ; 
 int THRESHOLD_APIC_VECTOR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int*) ; 
 int /*<<< orphan*/  intel_threshold_interrupt ; 
 int /*<<< orphan*/  mce_threshold_vector ; 

__attribute__((used)) static void FUNC4(void)
{
	int banks;

	if (!FUNC3(&banks))
		return;

	mce_threshold_vector = intel_threshold_interrupt;
	FUNC1(banks);
	/*
	 * For CPU #0 this runs with still disabled APIC, but that's
	 * ok because only the vector is set up. We still do another
	 * check for the banks later for CPU #0 just to make sure
	 * to not miss any events.
	 */
	FUNC0(APIC_LVTCMCI, THRESHOLD_APIC_VECTOR|APIC_DM_FIXED);
	FUNC2();
}