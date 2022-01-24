#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int /*<<< orphan*/  apic; } ;

/* Variables and functions */
 int /*<<< orphan*/  APIC_DM_NMI ; 
 int /*<<< orphan*/  APIC_LVTPC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_1__ x86_pmu ; 
 int /*<<< orphan*/  FUNC1 () ; 

void FUNC2(void)
{
	if (!x86_pmu.apic || !FUNC1())
		return;

	/*
	 * Always use NMI for PMU
	 */
	FUNC0(APIC_LVTPC, APIC_DM_NMI);
}