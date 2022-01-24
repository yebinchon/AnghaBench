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
 int DABRX_KERNEL ; 
 int DABRX_USER ; 
 int /*<<< orphan*/  SPRN_DABRX ; 
 int boot_cpuid ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC2(int cpu)
{
	if (cpu != boot_cpuid)
		FUNC0();

	/*
	 * change default DABRX to allow user watchpoints
	 */
	FUNC1(SPRN_DABRX, DABRX_KERNEL | DABRX_USER);
}