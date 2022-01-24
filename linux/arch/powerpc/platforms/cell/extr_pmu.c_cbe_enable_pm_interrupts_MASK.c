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
typedef  scalar_t__ u32 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  pm_status ; 

void FUNC2(u32 cpu, u32 thread, u32 mask)
{
	/* Set which node and thread will handle the next interrupt. */
	FUNC1(cpu, thread, 0);

	/* Enable the interrupt bits in the pm_status register. */
	if (mask)
		FUNC0(cpu, pm_status, mask);
}