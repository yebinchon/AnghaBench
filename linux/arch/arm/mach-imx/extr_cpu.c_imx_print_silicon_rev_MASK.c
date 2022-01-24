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
 int IMX_CHIP_REVISION_UNKNOWN ; 
 int /*<<< orphan*/  FUNC0 (char*,char const*,...) ; 

void FUNC1(const char *cpu, int srev)
{
	if (srev == IMX_CHIP_REVISION_UNKNOWN)
		FUNC0("CPU identified as %s, unknown revision\n", cpu);
	else
		FUNC0("CPU identified as %s, silicon rev %d.%d\n",
				cpu, (srev >> 4) & 0xf, srev & 0xf);
}