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
 scalar_t__ SDCASR_REG ; 
 int SDCASR_REG_STRIDE ; 
 int /*<<< orphan*/  FUNC0 (unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,unsigned int) ; 
 scalar_t__ sdcasr_mapbase ; 
 scalar_t__ FUNC3 (int) ; 

__attribute__((used)) static void FUNC4(int cpu, unsigned int astate)
{
	unsigned long flags;

	/* Return if called before init has run */
	if (FUNC3(!sdcasr_mapbase))
		return;

	FUNC1(flags);

	FUNC2(sdcasr_mapbase + SDCASR_REG + SDCASR_REG_STRIDE*cpu, astate);

	FUNC0(flags);
}