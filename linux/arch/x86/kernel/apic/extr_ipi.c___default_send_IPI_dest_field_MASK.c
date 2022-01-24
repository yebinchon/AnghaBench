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
 int /*<<< orphan*/  APIC_ICR ; 
 int /*<<< orphan*/  APIC_ICR2 ; 
 int NMI_VECTOR ; 
 unsigned long FUNC0 (int /*<<< orphan*/ ,int,unsigned int) ; 
 unsigned long FUNC1 (unsigned int) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 scalar_t__ FUNC5 (int) ; 

void FUNC6(unsigned int mask, int vector, unsigned int dest)
{
	unsigned long cfg;

	/*
	 * Wait for idle.
	 */
	if (FUNC5(vector == NMI_VECTOR))
		FUNC4();
	else
		FUNC2();

	/*
	 * prepare target chip field
	 */
	cfg = FUNC1(mask);
	FUNC3(APIC_ICR2, cfg);

	/*
	 * program the ICR
	 */
	cfg = FUNC0(0, vector, dest);

	/*
	 * Send the IPI. The write to APIC_ICR fires this off.
	 */
	FUNC3(APIC_ICR, cfg);
}