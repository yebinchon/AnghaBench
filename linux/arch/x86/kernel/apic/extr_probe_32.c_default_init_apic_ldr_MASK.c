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
 int /*<<< orphan*/  APIC_DFR ; 
 unsigned long APIC_DFR_VALUE ; 
 int /*<<< orphan*/  APIC_LDR ; 
 unsigned long APIC_LDR_MASK ; 
 unsigned long FUNC0 (unsigned long) ; 
 unsigned long FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,unsigned long) ; 
 unsigned long FUNC3 () ; 

__attribute__((used)) static void FUNC4(void)
{
	unsigned long val;

	FUNC2(APIC_DFR, APIC_DFR_VALUE);
	val = FUNC1(APIC_LDR) & ~APIC_LDR_MASK;
	val |= FUNC0(1UL << FUNC3());
	FUNC2(APIC_LDR, val);
}