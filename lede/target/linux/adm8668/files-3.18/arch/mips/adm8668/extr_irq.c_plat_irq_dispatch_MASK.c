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
 scalar_t__ MIPS_CPU_IRQ_BASE ; 
 unsigned int ST0_IM ; 
 unsigned int STATUSF_IP2 ; 
 unsigned int STATUSF_IP7 ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 unsigned int FUNC2 () ; 
 unsigned int FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 

void FUNC5(void)
{
	unsigned int pending;

	pending = FUNC2() & FUNC3() & ST0_IM;

	/* timer interrupt, that we renumbered */
	if (pending & STATUSF_IP7)
		FUNC1(MIPS_CPU_IRQ_BASE + 7);
	else if (pending & STATUSF_IP2)
		FUNC0();
	else
		FUNC4();
}