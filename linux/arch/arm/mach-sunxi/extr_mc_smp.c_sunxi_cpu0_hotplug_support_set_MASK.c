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
 int CPU0_SUPPORT_HOTPLUG_MAGIC0 ; 
 int CPU0_SUPPORT_HOTPLUG_MAGIC1 ; 
 scalar_t__ sram_b_smp_base ; 
 int /*<<< orphan*/  FUNC0 (int,scalar_t__) ; 

__attribute__((used)) static void FUNC1(bool enable)
{
	if (enable) {
		FUNC0(CPU0_SUPPORT_HOTPLUG_MAGIC0, sram_b_smp_base);
		FUNC0(CPU0_SUPPORT_HOTPLUG_MAGIC1, sram_b_smp_base + 0x4);
	} else {
		FUNC0(0x0, sram_b_smp_base);
		FUNC0(0x0, sram_b_smp_base + 0x4);
	}
}