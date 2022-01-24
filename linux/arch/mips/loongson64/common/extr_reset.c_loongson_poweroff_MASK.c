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
struct TYPE_2__ {scalar_t__ poweroff_addr; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 TYPE_1__ loongson_sysconf ; 
 int /*<<< orphan*/  FUNC1 () ; 

__attribute__((used)) static void FUNC2(void)
{
#ifndef CONFIG_LEFI_FIRMWARE_INTERFACE
	FUNC1();

	/*
	 * It needs a wait loop here, but mips/kernel/reset.c already calls
	 * a generic delay loop, machine_hang(), so simply return.
	 */
	return;
#else
	void (*fw_poweroff)(void) = (void *)loongson_sysconf.poweroff_addr;

	fw_poweroff();
	while (1) {
		if (cpu_wait)
			cpu_wait();
	}
#endif
}